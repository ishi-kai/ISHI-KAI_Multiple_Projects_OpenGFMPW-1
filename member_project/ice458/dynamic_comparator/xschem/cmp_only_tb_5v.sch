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
N -190 -210 -190 -200 {
lab=GND}
N -220 -200 -190 -200 {
lab=GND}
N -190 -290 -190 -270 {
lab=#net2}
N -190 -290 140 -290 {
lab=#net2}
N -30 -180 -10 -180 {
lab=clk}
N -210 -60 -30 -60 {
lab=GND}
N -210 -200 -210 -60 {
lab=GND}
N -150 -80 -100 -80 {
lab=#net3}
N -170 -80 -150 -80 {
lab=#net3}
N -140 -130 -140 -90 {
lab=#net3}
N -140 -90 -140 -80 {
lab=#net3}
N -100 -200 -100 -140 {
lab=inp}
N -100 -200 -10 -200 {
lab=inp}
N -140 -220 -140 -190 {
lab=inm}
N -140 -220 -10 -220 {
lab=inm}
N 290 -160 340 -160 {
lab=done}
N 290 -140 340 -140 {
lab=out}
N -190 -90 -190 -60 {
lab=GND}
N -170 -150 -170 -80 {
lab=#net3}
N -190 -150 -170 -150 {
lab=#net3}
N 140 -290 310 -290 {
lab=#net2}
N 310 -290 310 -180 {
lab=#net2}
N 290 -180 310 -180 {
lab=#net2}
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
N 290 -200 330 -200 {
lab=GND}
N -30 -180 -30 -120 {
lab=clk}
N 290 -120 320 -120 {
lab=outp}
N 320 -120 320 -80 {
lab=outp}
N 290 -100 290 -80 {
lab=outn}
C {cmp_only_5v.sym} 140 -160 0 0 {name=x1}
C {devices/gnd.sym} -260 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -260 -240 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -490 -310 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10p 1u
plot inp inm
plot out
plot clk

.endc
"}
C {devices/vsource.sym} -190 -240 0 0 {name=V1 value=1.65 savecurrent=false}
C {devices/vsource.sym} -30 -90 0 0 {name=V4 value="pulse(0 3.3 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {devices/vsource.sym} -140 -160 0 0 {name=V5 value="pulse(1m -1m 0 0.1n 0.1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} 320 -140 3 0 {name=p5 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -70 -220 1 0 {name=p1 sig_type=std_logic lab=inm
}
C {devices/lab_pin.sym} -70 -200 3 0 {name=p2 sig_type=std_logic lab=inp
}
C {devices/vsource.sym} -100 -110 0 0 {name=V3 value="pulse(-0.4m 0.4m 0 0.1n 0.1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} -30 -130 0 0 {name=p3 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} -190 -120 0 0 {name=V6 value="pulse(0 3.3 0 400n 0.1n 400n 400n)" savecurrent=false}
C {devices/lab_pin.sym} 320 -160 1 0 {name=p6 sig_type=std_logic lab=done
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
C {devices/lab_pin.sym} 320 -80 3 0 {name=p4 sig_type=std_logic lab=outp
}
C {devices/lab_pin.sym} 290 -80 3 0 {name=p7 sig_type=std_logic lab=outn
}
