v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -420 360 -420 {
lab=#net1}
N 90 -420 90 -320 {
lab=#net1}
N 250 -290 250 -220 {
lab=A6}
N 90 -100 360 -100 {
lab=GND}
N 90 -260 90 -100 {
lab=GND}
N 250 -160 250 -100 {
lab=GND}
N 550 -270 570 -270 {
lab=Q7}
N 550 -250 550 -100 {
lab=GND}
N 360 -100 550 -100 {
lab=GND}
N 360 -440 360 -420 {}
N 360 -420 550 -420 {}
N 550 -420 550 -290 {}
C {devices/gnd.sym} 360 -100 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 360 -440 0 0 {name=l2 lab=VDD}
C {devices/code_shown.sym} 700 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 700 -300 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
save all
dc V2 0 5.0 0.05
plot v(a6) v(q7)
wrdata ~/inv_dc.txt v(q7)
write inv_dc.raw
.endc
"}
C {devices/vsource.sym} 90 -290 0 0 {name=V1 value=5.0 savecurrent=false}
C {devices/vsource.sym} 250 -190 0 0 {name=V2 value=5.0 savecurrent=false}
C {devices/ipin.sym} 250 -290 0 0 {name=p1 lab=A6}
C {devices/opin.sym} 570 -270 0 0 {name=p2 lab=Q7}
C {inverter_circit_only.sym} 400 -270 0 0 {name=x1}
