v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 50 -60 80 {
lab=GND}
N -60 -110 -60 -10 {
lab=#net1}
N -60 -110 130 -110 {
lab=#net1}
N 130 -110 130 -40 {
lab=#net1}
N 160 -80 160 -40 {
lab=GND}
N -30 -80 160 -80 {
lab=GND}
N -30 -80 -30 60 {
lab=GND}
N -60 60 -30 60 {
lab=GND}
N 10 20 60 20 {
lab=in}
N -20 60 -20 110 {
lab=GND}
N -30 60 -20 60 {
lab=GND}
N -20 140 130 140 {
lab=GND}
N -20 110 -20 140 {
lab=GND}
N 240 20 280 20 {
lab=out}
N 270 20 270 50 {
lab=out}
N 270 110 270 140 {
lab=GND}
N 130 140 270 140 {
lab=GND}
N 10 20 10 60 {
lab=in}
N 10 120 10 140 {
lab=GND}
C {devices/gnd.sym} -60 80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -60 20 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -420 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -400 -80 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 1n 2u
plot in out ctrl

.endc
"}
C {devices/lab_pin.sym} 40 20 1 0 {name=p1 sig_type=std_logic lab=in}
C {devices/vsource.sym} 130 110 0 0 {name=V3 value="pulse(0 3.3 0 0.1n 0.1n 50n 100n)" savecurrent=false}
C {devices/lab_pin.sym} 270 20 1 0 {name=p2 sig_type=std_logic lab=out
}
C {devices/capa.sym} 270 80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 130 80 2 0 {name=p3 sig_type=std_logic lab=ctrl
}
C {bt_sw.sym} 150 20 0 0 {name=x1}
C {devices/vsource.sym} 10 90 0 0 {name=V1 value="sin(1.65 1.65 1Meg)" savecurrent=false}
