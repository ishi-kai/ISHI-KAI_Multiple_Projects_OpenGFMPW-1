v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -90 40 -80 {
lab=GND}
N 40 -100 40 -90 {
lab=GND}
N 110 -100 110 -90 {
lab=GND}
N 290 -200 290 -160 {
lab=#net1}
N 40 -260 40 -160 {
lab=#net2}
N 40 -260 660 -260 {
lab=#net2}
N 180 -120 180 -90 {
lab=GND}
N 290 -100 290 -90 {
lab=GND}
N 730 -350 730 -340 {
lab=GND}
N 660 -450 770 -450 {
lab=OUT2}
N 730 -450 730 -410 {
lab=OUT2}
N 340 -470 340 -220 {
lab=#net3}
N 340 -470 360 -470 {
lab=#net3}
N 330 -450 330 -200 {
lab=#net1}
N 330 -450 360 -450 {
lab=#net1}
N 320 -430 320 -180 {
lab=#net4}
N 320 -430 360 -430 {
lab=#net4}
N 660 -260 670 -260 {
lab=#net2}
N 670 -470 670 -260 {
lab=#net2}
N 660 -470 670 -470 {
lab=#net2}
N 710 -340 730 -340 {
lab=GND}
N 710 -340 710 -90 {
lab=GND}
N 660 -430 680 -430 {
lab=GND}
N 680 -430 680 -180 {
lab=GND}
N 680 -180 680 -90 {
lab=GND}
N 180 -180 320 -180 {
lab=#net4}
N 290 -200 330 -200 {
lab=#net1}
N 40 -90 710 -90 {
lab=GND}
N 340 -220 360 -220 {
lab=#net3}
N 320 -180 360 -180 {
lab=#net4}
N 330 -200 360 -200 {
lab=#net1}
N 660 -180 680 -180 {
lab=GND}
N 660 -200 730 -200 {
lab=OUT}
N 710 -90 730 -90 {
lab=GND}
N 660 -220 670 -220 {
lab=#net2}
N 670 -260 670 -220 {
lab=#net2}
N 730 -200 750 -200 {
lab=OUT}
N 730 -110 730 -90 {
lab=GND}
N 730 -200 730 -170 {
lab=OUT}
N 110 -220 110 -160 {
lab=#net3}
N 110 -220 340 -220 {
lab=#net3}
C {devices/gnd.sym} 40 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 40 -130 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vsource.sym} 180 -150 0 0 {name=Vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/code_shown.sym} 890 -280 0 0 {name=MODELS only_toplevel=false format="tcleval( @value )" value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical"}
C {devices/simulator_commands_shown.sym} 890 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".option savecurrent
.include ~/Documents/MyDocuments/ISHIKAI/2023/gf180/op1124/klayout/first/TOP_pex_extracted.spice
.control
set units=degree
op
save all
ac dec 20 1e3 1e10
plot   vdb(OUT)  vdb(OUT2)
plot   v(OUT) v(OUT2)
plot   vp(OUT) vp(OUT2)
wrdata ~/tran.txt vdb(OUT) vdb(OUT2)
write isou.raw
.endc
"}
C {devices/vsource.sym} 290 -130 0 0 {name=Vinn value=2.5 savecurrent=false}
C {devices/opin.sym} 770 -450 0 0 {name=p2 lab=OUT2}
C {devices/capa.sym} 730 -380 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {Documents/MyDocuments/ISHIKAI/2023/gf180/op1124/final_op/op.sym} 510 -450 0 0 {name=x2}
C {devices/vsource.sym} 110 -130 0 0 {name=Vb value=4 savecurrent=false}
C {devices/capa.sym} 730 -140 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/opin.sym} 750 -200 0 0 {name=p1 lab=OUT}
C {Documents/MyDocuments/ISHIKAI/2023/gf180/op1124/klayout/first/op_20231204_flat.sym} 510 -200 0 0 {name=x1 prefix=TOP}
