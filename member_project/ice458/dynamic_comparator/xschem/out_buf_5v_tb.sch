v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -330 -260 -270 {
lab=#net1}
N -260 -330 100 -330 {
lab=#net1}
N -220 -310 120 -310 {
lab=GND}
N -220 -310 -220 -200 {
lab=GND}
N -260 -200 -220 -200 {
lab=GND}
N -260 -210 -260 -200 {
lab=GND}
N -260 -200 -260 -180 {
lab=GND}
N -30 -180 -10 -180 {
lab=clk}
N -210 -60 -30 -60 {
lab=GND}
N 290 -160 340 -160 {
lab=out}
N 290 -330 290 -220 {
lab=#net1}
N 100 -330 290 -330 {
lab=#net1}
N 120 -310 330 -310 {
lab=GND}
N 330 -310 330 -210 {
lab=GND}
N 330 -210 330 -200 {
lab=GND}
N -30 -180 -30 -120 {
lab=clk}
N -220 -200 -220 -60 {
lab=GND}
N -220 -60 -210 -60 {
lab=GND}
N 330 -200 330 -140 {
lab=GND}
N 290 -140 330 -140 {
lab=GND}
N 290 -220 290 -180 {
lab=#net1}
N 360 -160 360 -140 {
lab=out}
N 340 -160 360 -160 {
lab=out}
N 360 -80 360 -60 {
lab=GND}
N 330 -60 360 -60 {
lab=GND}
N 330 -140 330 -60 {
lab=GND}
C {devices/gnd.sym} -260 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -260 -240 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -490 -310 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10p 100n
plot out clk

.endc
"}
C {devices/vsource.sym} -30 -90 0 0 {name=V4 value="pulse(0 3.3 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {devices/lab_pin.sym} -30 -130 0 0 {name=p3 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 320 -160 1 0 {name=p6 sig_type=std_logic lab=out

}
C {devices/code_shown.sym} -510 -520 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {out_buf_5v.sym} 140 -160 0 0 {name=x1}
C {devices/capa.sym} 360 -110 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
