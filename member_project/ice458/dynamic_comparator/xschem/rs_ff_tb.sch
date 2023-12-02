v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 20 -60 40 {
lab=clk}
N -60 20 -30 20 {
lab=clk}
N -170 -20 -170 40 {
lab=r}
N -170 -20 -30 -20 {
lab=r}
N -250 10 -250 40 {
lab=d}
N -250 0 -250 10 {
lab=d}
N -250 0 -30 0 {
lab=d}
N -340 -70 -340 10 {
lab=#net1}
N -340 -70 60 -70 {
lab=#net1}
N 60 -70 60 -50 {
lab=#net1}
N 80 -100 80 -50 {
lab=GND}
N -410 -100 80 -100 {
lab=GND}
N -410 -100 -410 100 {
lab=GND}
N -410 100 -60 100 {
lab=GND}
N -340 70 -340 100 {
lab=GND}
N 270 -20 300 -20 {
lab=out}
C {rs_ff.sym} 120 0 0 0 {name=x1}
C {devices/code_shown.sym} -620 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -600 -100 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 100p 2000n
plot clk
plot d
plot r
plot out

.endc
"}
C {devices/vsource.sym} -60 70 0 0 {name=V3 value="pulse(0 3.3 0 0.1n 0.1n 100n 200n)" savecurrent=false}
C {devices/lab_pin.sym} 300 -20 2 0 {name=p2 sig_type=std_logic lab=out
}
C {devices/vsource.sym} -170 70 0 0 {name=V1 value="pulse(0 3.3 0 0.1n 0.1n 1000n 2000n)" savecurrent=false}
C {devices/vsource.sym} -250 70 0 0 {name=V4 value="pulse(0 3.3 50n 0.1n 0.1n 200n 400n)" savecurrent=false}
C {devices/vsource.sym} -340 40 0 0 {name=V5 value=3.3 savecurrent=false}
C {devices/gnd.sym} -390 100 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -60 20 1 0 {name=p4 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -140 -20 1 0 {name=p5 sig_type=std_logic lab=r}
C {devices/lab_pin.sym} -240 0 1 0 {name=p6 sig_type=std_logic lab=d}
