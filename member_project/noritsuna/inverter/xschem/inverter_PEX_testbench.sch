v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -420 360 -420 {
lab=VDD}
N 90 -420 90 -320 {
lab=VDD}
N 90 -100 360 -100 {
lab=GND}
N 90 -260 90 -100 {
lab=GND}
N 550 -270 570 -270 {
lab=Q7}
N 550 -250 550 -100 {
lab=GND}
N 360 -100 550 -100 {
lab=GND}
N 360 -440 360 -420 {
lab=VDD}
N 360 -420 550 -420 {
lab=VDD}
N 550 -420 550 -290 {
lab=VDD}
N 730 -350 730 -250 {
lab=QM}
N 690 -380 690 -220 {
lab=A6}
N 620 -300 690 -300 {
lab=A6}
N 730 -220 760 -220 {
lab=GND}
N 760 -220 760 -160 {
lab=GND}
N 730 -160 760 -160 {
lab=GND}
N 730 -300 760 -300 {
lab=QM}
N 550 -420 730 -420 {
lab=VDD}
N 550 -100 690 -100 {
lab=GND}
N 730 -190 730 -100 {
lab=GND}
N 690 -100 730 -100 {
lab=GND}
N 730 -420 730 -410 {
lab=VDD}
N 730 -420 750 -420 {
lab=VDD}
N 750 -420 750 -380 {
lab=VDD}
N 730 -380 750 -380 {
lab=VDD}
N 210 -290 250 -290 {
lab=A6}
C {devices/gnd.sym} 360 -100 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 360 -440 0 0 {name=l2 lab=VDD}
C {devices/code_shown.sym} 830 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 830 -310 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
VA A6 0 pulse (0 5.0 0 40p 40p 0.5n 1n) dc 0
.include ~/TOP_pex_extracted.spice
.control
save all
tran 1p 2n
plot v(a6) v(q7) v(qm)
wrdata ~/inv_tran.txt v(a6) v(q7) v(qm)
write inv_tran.raw
.endc
"}
C {devices/vsource.sym} 90 -290 0 0 {name=V1 value=5.0 savecurrent=false}
C {devices/ipin.sym} 210 -290 0 0 {name=p1 lab=A6}
C {devices/opin.sym} 570 -270 0 0 {name=p2 lab=Q7}
C {inverter_PEX.sym} 400 -270 0 0 {name=x1}
C {symbols/pfet_06v0.sym} 710 -380 0 0 {name=M1
L=0.60u
W=7.20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 710 -220 0 0 {name=M2
L=0.60u
W=3.60u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/ipin.sym} 620 -300 0 0 {name=p3 lab=A6}
C {devices/opin.sym} 760 -300 0 0 {name=p4 lab=QM}
