v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 -200 -280 -10 {
lab=A}
N -280 -10 -80 -10 {
lab=A}
N -280 -10 -280 130 {
lab=A}
N -300 -130 -300 150 {
lab=B}
N -300 10 -80 10 {
lab=B}
N -400 100 0 100 {
lab=vdd}
N -400 -280 -400 100 {
lab=vdd}
N -400 -280 -220 -280 {
lab=vdd}
N -220 -280 -220 -250 {
lab=vdd}
N -220 -280 -0 -280 {
lab=vdd}
N -0 -280 0 -180 {
lab=vdd}
N -400 -40 0 -40 {
lab=vdd}
N -380 70 30 70 {
lab=vss}
N -380 -250 -380 70 {
lab=vss}
N -380 -260 -380 -250 {
lab=vss}
N -380 -260 30 -260 {
lab=vss}
N 30 -260 30 -180 {
lab=vss}
N -200 -260 -200 -250 {
lab=vss}
N 30 -260 280 -260 {
lab=vss}
N 280 -260 280 -190 {
lab=vss}
N 260 -280 260 -190 {
lab=vdd}
N -0 -280 260 -280 {
lab=vdd}
N 30 -80 30 -40 {
lab=vss}
N -380 -80 30 -80 {
lab=vss}
N 0 -50 260 -50 {
lab=vdd}
N 0 -50 0 -40 {
lab=vdd}
N 30 -80 280 -80 {
lab=vss}
N 280 -80 280 -50 {
lab=vss}
N -430 -280 -400 -280 {
lab=vdd}
N -430 -260 -380 -260 {
lab=vss}
N 0 100 0 220 {
lab=vdd}
N 30 70 280 70 {
lab=vss}
N 280 70 280 210 {
lab=vss}
N 0 100 260 100 {
lab=vdd}
N 260 100 260 210 {
lab=vdd}
N -230 100 -230 120 {
lab=vdd}
N -210 70 -210 120 {
lab=vss}
N 30 70 30 220 {
lab=vss}
N -90 170 -80 170 {
lab=#net1}
N -80 170 -80 250 {
lab=#net1}
N -90 270 -80 270 {
lab=#net2}
N -280 130 -280 170 {
lab=A}
N -280 170 -270 170 {
lab=A}
N -300 150 -300 270 {
lab=B}
N -300 270 -270 270 {
lab=B}
N -400 100 -400 220 {
lab=vdd}
N -400 220 -230 220 {
lab=vdd}
N -210 210 -210 220 {
lab=vss}
N -380 210 -210 210 {
lab=vss}
N -380 70 -380 210 {
lab=vss}
N -340 -130 -260 -130 {
lab=B}
N -220 -250 -220 -180 {
lab=vdd}
N -200 -250 -200 -180 {
lab=vss}
N -340 -200 -80 -200 {
lab=A}
N -80 -200 -80 -150 {
lab=A}
C {nand.sym} 70 10 0 0 {name=x1}
C {inv.sym} 300 0 0 0 {name=x2}
C {nand.sym} 70 270 0 0 {name=x3}
C {nand.sym} 70 -130 0 0 {name=x4}
C {inv.sym} 300 -140 0 0 {name=x5}
C {inv.sym} -180 -130 0 0 {name=x6}
C {devices/ipin.sym} -340 -200 0 0 {name=p1 lab=A}
C {devices/ipin.sym} -340 -130 0 0 {name=p2 lab=B}
C {devices/iopin.sym} -430 -280 2 0 {name=p3 lab=vdd}
C {devices/iopin.sym} -430 -260 2 0 {name=p4 lab=vss}
C {devices/opin.sym} 400 -140 0 0 {name=p5 lab=E}
C {devices/opin.sym} 400 0 0 0 {name=p6 lab=D}
C {devices/opin.sym} 400 260 0 0 {name=p7 lab=C}
C {inv.sym} 300 260 0 0 {name=x7}
C {inv.sym} -190 170 0 0 {name=x8}
C {inv.sym} -190 270 0 0 {name=x9}
