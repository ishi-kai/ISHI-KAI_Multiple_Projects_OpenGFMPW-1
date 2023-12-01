v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -260 220 -250 {
lab=in}
N 80 -60 390 -60 {
lab=GND}
N 80 -200 80 -100 {
lab=GND}
N 80 -60 80 -40 {
lab=GND}
N 390 -60 490 -60 {
lab=GND}
N 140 -150 140 -100 {
lab=GND}
N 270 -150 290 -150 {
lab=#net1}
N 270 -70 270 -60 {
lab=GND}
N 470 -240 470 -170 {
lab=out}
N 270 -150 270 -130 {
lab=#net1}
N 350 -150 470 -150 {
lab=out}
N 470 -170 470 -150 {
lab=out}
N 140 -100 140 -60 {
lab=GND}
N 80 -100 80 -60 {
lab=GND}
N 220 -190 220 -60 {
lab=GND}
N 80 -410 80 -260 {
lab=#net2}
N 80 -410 580 -410 {
lab=#net2}
N 580 -410 580 -330 {
lab=#net2}
N 550 -330 580 -330 {
lab=#net2}
N 140 -380 140 -210 {
lab=#net3}
N 140 -380 620 -380 {
lab=#net3}
N 620 -380 620 -310 {
lab=#net3}
N 550 -310 620 -310 {
lab=#net3}
N 220 -330 220 -260 {
lab=in}
N 220 -330 250 -330 {
lab=in}
N 250 -150 270 -150 {
lab=#net1}
N 250 -310 250 -150 {
lab=#net1}
N 550 -270 550 -60 {
lab=GND}
N 490 -60 550 -60 {
lab=GND}
N 470 -240 610 -240 {
lab=out}
N 610 -290 610 -240 {
lab=out}
N 550 -290 610 -290 {
lab=out}
N 610 -290 650 -290 {
lab=out}
N 610 -240 610 -220 {
lab=out}
N 610 -160 610 -60 {
lab=GND}
N 550 -60 610 -60 {
lab=GND}
C {devices/code_shown.sym} -470 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
save all
ac dec 20 1e2 1e10
plot vdb(out)
plot vp(out)
.endc"}
C {devices/vsource.sym} 80 -230 0 0 {name=Vdd value=5.0}
C {devices/vsource.sym} 220 -220 0 0 {name=Vinp value="DC 2.5 AC 1"}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 650 -290 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=30.8e6"}
C {devices/capa.sym} 610 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 220 -260 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/isource.sym} 140 -180 0 0 {name=I0 value=20e-6}
C {devices/res.sym} 320 -150 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 270 -100 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {opamp.sym} 400 -300 0 0 {name=X1}
