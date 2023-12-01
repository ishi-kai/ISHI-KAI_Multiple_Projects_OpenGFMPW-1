v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -660 300 -570 {
lab=VDD}
N 260 -540 260 -370 {
lab=A}
N 180 -460 260 -460 {
lab=A}
N 300 -510 300 -400 {
lab=Y}
N 300 -460 420 -460 {
lab=Y}
N 300 -340 300 -280 {
lab=GND}
N 300 -540 320 -540 {
lab=VDD}
N 320 -600 320 -540 {
lab=VDD}
N 300 -600 320 -600 {
lab=VDD}
N 300 -370 320 -370 {
lab=GND}
N 320 -370 320 -320 {
lab=GND}
N 300 -320 320 -320 {
lab=GND}
N 300 -280 300 -260 {
lab=GND}
C {devices/code_shown.sym} -480 -690 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_03v3.sym} 280 -370 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_03v3.sym} 280 -540 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/opin.sym} 420 -460 0 0 {name=p1 lab=Y}
C {devices/ipin.sym} 180 -460 0 0 {name=p2 lab=A}
C {devices/iopin.sym} 300 -660 2 0 {name=p3 lab=VDD}
C {devices/simulator_commands_shown.sym} 40 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
VD VDD 0 dc 3.3
VA A 0 dc 0
.control
save all
dc VA 0 3.3 0.05
plot V(A) V(Y)
.endc
"}
C {devices/gnd.sym} 300 -260 0 0 {name=l1 lab=GND}
