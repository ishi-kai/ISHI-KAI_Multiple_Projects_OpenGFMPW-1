v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -160 -250 -100 {
lab=#net1}
N -250 -160 110 -160 {
lab=#net1}
N 110 -160 110 -80 {
lab=#net1}
N 130 -140 130 -80 {
lab=GND}
N -210 -140 130 -140 {
lab=GND}
N -210 -140 -210 -30 {
lab=GND}
N -250 -30 -210 -30 {
lab=GND}
N -250 -40 -250 -30 {
lab=GND}
N -250 -30 -250 -10 {
lab=GND}
N -180 -40 -180 -30 {
lab=GND}
N -210 -30 -180 -30 {
lab=GND}
N -180 -120 -180 -100 {
lab=#net2}
N -180 -120 150 -120 {
lab=#net2}
N 150 -120 150 -80 {
lab=#net2}
N -20 -10 -20 50 {
lab=clk}
N -20 -10 -0 -10 {
lab=clk}
N -200 110 -20 110 {
lab=GND}
N -200 -30 -200 110 {
lab=GND}
N -140 90 -90 90 {
lab=#net3}
N -160 90 -140 90 {
lab=#net3}
N -130 40 -130 80 {
lab=#net3}
N -130 80 -130 90 {
lab=#net3}
N -90 -30 -90 30 {
lab=inp}
N -90 -30 0 -30 {
lab=inp}
N -130 -50 -130 -20 {
lab=inm}
N -130 -50 -0 -50 {
lab=inm}
N 300 -40 350 -40 {
lab=outm}
N 300 -20 350 -20 {
lab=outp}
N -180 80 -180 110 {
lab=GND}
N -160 20 -160 90 {
lab=#net3}
N -180 20 -160 20 {
lab=#net3}
C {dinamic_CMP.sym} 150 -10 0 0 {name=x1}
C {devices/gnd.sym} -250 -10 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -250 -70 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -480 -140 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10p 1u
plot inp inm
plot outp outm
plot clk
plot x1.vp x1.vn

.endc
"}
C {devices/vsource.sym} -180 -70 0 0 {name=V1 value=1.65 savecurrent=false}
C {devices/vsource.sym} -20 80 0 0 {name=V4 value="pulse(0 3.3 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {devices/vsource.sym} -130 10 0 0 {name=V5 value="pulse(1m -1m 0 0.1n 0.1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} 330 -20 3 0 {name=p5 sig_type=std_logic lab=outp
}
C {devices/lab_pin.sym} -60 -50 1 0 {name=p1 sig_type=std_logic lab=inm
}
C {devices/lab_pin.sym} -60 -30 3 0 {name=p2 sig_type=std_logic lab=inp
}
C {devices/vsource.sym} -90 60 0 0 {name=V3 value="pulse(-0.4m 0.4m 0 0.1n 0.1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} -20 40 0 0 {name=p3 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} -180 50 0 0 {name=V6 value="pulse(0 3.3 0 400n 0.1n 400n 400n)" savecurrent=false}
C {devices/lab_pin.sym} 330 -40 1 0 {name=p6 sig_type=std_logic lab=outm
}
C {devices/code_shown.sym} -500 -360 0 0 {name=MODELS1 only_toplevel=true
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
