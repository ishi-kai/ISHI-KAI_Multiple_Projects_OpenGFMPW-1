v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -20 -270 -20 {
lab=vdd}
N 170 0 280 -0 {
lab=out}
N -180 -20 -130 -20 {
lab=in}
C {inv.sym} 20 0 0 0 {name=x1}
C {devices/gnd.sym} -310 40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -310 10 0 0 {name=V1 value=5 savecurrent=false}
C {devices/lab_pin.sym} -270 -20 0 1 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 170 -20 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {devices/res.sym} 280 30 0 0 {name=R2
value=100G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 280 0 0 1 {name=l7 sig_type=std_logic lab=out}
C {devices/gnd.sym} -180 40 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -180 10 0 0 {name=V2 value=5 savecurrent=false}
C {devices/code_shown.sym} -420 -150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 140 -190 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
dc v2 0 5 0.01
write inv_tb.raw
plot in out
.endc
"}
C {devices/lab_pin.sym} -180 -20 0 0 {name=l9 sig_type=std_logic lab=in}
C {devices/gnd.sym} 170 20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 280 60 0 0 {name=l5 lab=GND}
