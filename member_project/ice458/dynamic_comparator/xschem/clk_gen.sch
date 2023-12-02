v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 50 350 50 {
lab=#net1}
N 350 60 350 170 {
lab=#net1}
N 830 180 950 180 {
lab=cmp1st}
N -100 -30 280 -30 {
lab=vss}
N 280 -30 280 120 {
lab=vss}
N 280 120 710 120 {
lab=vss}
N 710 120 710 130 {
lab=vss}
N 460 120 460 140 {
lab=vss}
N 260 70 280 70 {
lab=vss}
N 260 -50 260 30 {
lab=vdd}
N 430 90 430 140 {
lab=vdd}
N 310 90 430 90 {
lab=vdd}
N 310 -50 310 90 {
lab=vdd}
N 430 90 690 90 {
lab=vdd}
N 690 90 690 130 {
lab=vdd}
N -50 30 -40 30 {
lab=rst}
N -120 130 310 130 {
lab=vdd}
N 310 90 310 130 {
lab=vdd}
N -140 110 -140 130 {
lab=vss}
N -140 110 280 110 {
lab=vss}
N -80 180 -50 180 {
lab=rst}
N -50 30 -50 180 {
lab=rst}
N -370 180 -260 180 {
lab=#net2}
N -370 50 -370 180 {
lab=#net2}
N -370 50 -350 50 {
lab=#net2}
N -430 -50 -100 -50 {
lab=vdd}
N -430 -30 -100 -30 {
lab=vss}
N -430 -10 -430 70 {
lab=clk}
N -430 70 -350 70 {
lab=clk}
N -350 -30 -350 30 {
lab=vss}
N -260 -50 -260 0 {
lab=vdd}
N -240 -30 -240 -0 {
lab=vss}
N 350 190 350 240 {
lab=#net2}
N -280 240 350 240 {
lab=#net2}
N -280 180 -280 240 {
lab=#net2}
N -40 -120 150 -120 {
lab=rst}
N -40 -120 -40 0 {
lab=rst}
N -40 0 -40 30 {
lab=rst}
N 350 50 350 60 {
lab=#net1}
N -100 -50 310 -50 {
lab=vdd}
C {devices/ipin.sym} -430 -10 0 0 {name=p1 lab=clk}
C {devices/iopin.sym} -430 -50 2 0 {name=p2 lab=vdd}
C {devices/iopin.sym} -430 -30 2 0 {name=p3 lab=vss}
C {devices/opin.sym} 150 -120 0 0 {name=p5 lab=sample}
C {devices/opin.sym} 950 180 0 0 {name=p6 lab=cmp1st}
C {delay.sym} 110 50 0 0 {name=x2}
C {nand.sym} 500 190 0 0 {name=x4}
C {inv.sym} 730 180 0 0 {name=x5}
C {rs_ff.sym} -200 50 0 0 {name=x6}
C {inv.sym} -160 180 0 1 {name=x7}
