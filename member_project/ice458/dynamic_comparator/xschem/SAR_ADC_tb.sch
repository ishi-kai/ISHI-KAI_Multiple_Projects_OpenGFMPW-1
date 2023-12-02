v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -430 -40 -430 20 {
lab=#net1}
N -430 90 -390 90 {
lab=GND}
N -430 80 -430 90 {
lab=GND}
N -430 90 -430 110 {
lab=GND}
N -360 80 -360 90 {
lab=GND}
N -390 90 -360 90 {
lab=GND}
N -360 0 -360 20 {
lab=#net2}
N -380 230 -200 230 {
lab=GND}
N -380 90 -380 230 {
lab=GND}
N -340 210 -320 210 {
lab=#net2}
N -340 0 -340 210 {
lab=#net2}
N -310 160 -310 200 {
lab=#net2}
N -310 200 -310 210 {
lab=#net2}
N -310 70 -310 100 {
lab=in}
N -200 230 310 230 {
lab=GND}
N 310 -50 310 230 {
lab=GND}
N 280 -50 310 -50 {
lab=GND}
N -270 -50 -270 90 {
lab=clk}
N -270 -50 -20 -50 {
lab=clk}
N -300 -70 -20 -70 {
lab=in}
N -310 -70 -300 -70 {
lab=in}
N -310 -70 -310 70 {
lab=in}
N -360 0 -340 0 {
lab=#net2}
N 290 10 290 210 {
lab=#net2}
N 280 10 290 10 {
lab=#net2}
N 280 -10 310 -10 {
lab=GND}
N 280 -30 300 -30 {
lab=#net1}
N 300 -110 300 -30 {
lab=#net1}
N -430 -110 300 -110 {
lab=#net1}
N -430 -110 -430 -40 {
lab=#net1}
N 280 -70 300 -70 {
lab=#net1}
N 280 30 360 30 {
lab=dd0}
N 280 50 360 50 {
lab=dd1}
N 280 70 360 70 {
lab=dd2}
N 280 90 360 90 {
lab=dd3}
N -270 150 -270 230 {
lab=GND}
N -320 210 290 210 {
lab=#net2}
N 280 110 360 110 {
lab=done}
C {SAR_ADC.sym} 130 20 0 0 {name=x1}
C {devices/gnd.sym} -430 110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -430 50 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -660 -20 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
*tran 300p 150n
tran 500p 3.5u
plot in
plot clk
plot done
plot dd0
plot dd1
plot dd2
plot dd3
write SAR.raw in done dd0 dd1 dd2 dd3

.endc
"}
C {devices/vsource.sym} -360 50 0 0 {name=V1 value=1.65 savecurrent=false}
C {devices/vsource.sym} -310 130 0 0 {name=V5 value="pulse(-1.65 1.65 0 3u 0.1n 3u 3u)" savecurrent=false}
C {devices/lab_pin.sym} -110 -70 1 0 {name=p2 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} -120 -50 3 0 {name=p1 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} 360 30 2 0 {name=p3 sig_type=std_logic lab=dd0
}
C {devices/lab_pin.sym} 360 50 2 0 {name=p4 sig_type=std_logic lab=dd1
}
C {devices/lab_pin.sym} 360 70 2 0 {name=p5 sig_type=std_logic lab=dd2
}
C {devices/lab_pin.sym} 360 90 2 0 {name=p6 sig_type=std_logic lab=dd3
}
C {devices/vsource.sym} -270 120 0 0 {name=V4 value="pulse(0 3.3 0 0.1n 0.1n 25n 50n)" savecurrent=false}
C {devices/lab_pin.sym} 360 110 2 0 {name=p7 sig_type=std_logic lab=done
}
C {devices/code_shown.sym} -680 -220 0 0 {name=MODELS1 only_toplevel=true
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
