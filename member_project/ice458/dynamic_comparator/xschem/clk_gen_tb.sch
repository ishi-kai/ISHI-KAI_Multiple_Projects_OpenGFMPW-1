v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -10 -40 10 {
lab=#net1}
N -40 -10 -30 -10 {
lab=#net1}
N -140 60 -140 90 {
lab=GND}
N -140 70 -40 70 {
lab=GND}
N -140 -70 -140 -0 {
lab=#net2}
N -140 -70 290 -70 {
lab=#net2}
N 290 -70 290 10 {
lab=#net2}
N 270 10 290 10 {
lab=#net2}
N 270 30 290 30 {
lab=GND}
N -60 70 -60 120 {
lab=GND}
N -60 120 290 120 {
lab=GND}
N 290 30 290 120 {
lab=GND}
N 270 -10 320 -10 {
lab=rst}
N 270 50 320 50 {
lab=sample}
N 270 70 320 70 {
lab=cmp}
C {clk_gen.sym} 120 30 0 0 {name=x1}
C {devices/gnd.sym} -140 90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -140 30 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -390 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -370 -40 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10p 30n
plot rst sample cmp
plot clk

.endc
"}
C {devices/vsource.sym} -40 40 0 0 {name=V4 value="pulse(0 3.3 0 0.1n 0.1n 4.5n 9.0n)" savecurrent=false}
C {devices/lab_pin.sym} 320 -10 2 0 {name=p1 sig_type=std_logic lab=rst}
C {devices/lab_pin.sym} 320 50 2 0 {name=p2 sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 320 70 2 0 {name=p3 sig_type=std_logic lab=cmp}
