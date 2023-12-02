v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -130 -30 {
lab=#net1}
N -130 -80 40 -80 {
lab=#net1}
N 40 -80 40 -50 {
lab=#net1}
N 60 -70 60 -50 {
lab=GND}
N -90 -70 60 -70 {
lab=GND}
N -90 -70 -90 60 {
lab=GND}
N -130 60 -90 60 {
lab=GND}
N -130 30 -130 60 {
lab=GND}
N -60 0 0 -0 {
lab=in}
N -60 0 -60 10 {
lab=in}
N -90 70 -60 70 {
lab=GND}
N -90 60 -90 70 {
lab=GND}
N 180 0 220 0 {
lab=out}
C {devices/vsource.sym} -60 40 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} -130 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -130 0 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -490 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -470 -100 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
dc V1 0 3.3 0.01
plot in out

.endc
"}
C {devices/lab_pin.sym} -30 0 1 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 220 0 1 0 {name=p2 sig_type=std_logic lab=out}
C {inv_5v.sym} 90 0 0 0 {name=x1}
