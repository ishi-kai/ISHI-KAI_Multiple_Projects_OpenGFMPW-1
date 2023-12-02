v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 20 -120 50 {
lab=GND}
N -120 -140 -120 -40 {
lab=in}
N -120 -140 70 -140 {
lab=in}
N 70 -140 70 -70 {
lab=in}
N 100 -110 100 -70 {
lab=GND}
N -90 -110 100 -110 {
lab=GND}
N -90 -110 -90 30 {
lab=GND}
N -120 30 -90 30 {
lab=GND}
N -50 -10 0 -10 {
lab=in}
N -80 30 -80 80 {
lab=GND}
N -90 30 -80 30 {
lab=GND}
N -80 110 70 110 {
lab=GND}
N -80 80 -80 110 {
lab=GND}
N 180 -10 220 -10 {
lab=out}
N 210 -10 210 20 {
lab=out}
N 210 80 210 110 {
lab=GND}
N 70 110 210 110 {
lab=GND}
N -50 -140 -50 -10 {
lab=in}
C {cmos_sw.sym} 90 -10 0 0 {name=x1}
C {devices/gnd.sym} -120 50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -120 -10 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/code_shown.sym} -480 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -460 -110 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10p 10n
plot in out

.endc
"}
C {devices/lab_pin.sym} -20 -10 1 0 {name=p1 sig_type=std_logic lab=in}
C {devices/vsource.sym} 70 80 0 0 {name=V3 value="pulse(0 3.3 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {devices/lab_pin.sym} 210 -10 1 0 {name=p2 sig_type=std_logic lab=out
}
C {devices/capa.sym} 210 50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 70 50 2 0 {name=p3 sig_type=std_logic lab=ctrl
}
