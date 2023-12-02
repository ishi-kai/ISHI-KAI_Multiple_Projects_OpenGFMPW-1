v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 70 10 160 {
lab=#net1}
N 10 160 30 160 {
lab=#net1}
N -30 -60 30 -60 {
lab=#net2}
N -30 -40 30 -40 {
lab=#net3}
N -10 -40 -10 140 {
lab=#net3}
N -10 140 30 140 {
lab=#net3}
N -220 -130 -220 -100 {
lab=vdd}
N -220 -130 110 -130 {
lab=vdd}
N 110 -130 110 -90 {
lab=vdd}
N -200 -120 -200 -100 {
lab=vss}
N -200 -120 140 -120 {
lab=vss}
N 140 -120 140 -90 {
lab=vss}
N 0 90 120 90 {
lab=vdd}
N 0 -130 0 90 {
lab=vdd}
N -270 -170 -220 -170 {
lab=vdd}
N -220 -170 -220 -130 {
lab=vdd}
N -270 -130 -270 -120 {
lab=vcm}
N -270 -120 -270 -110 {
lab=vcm}
N -270 -110 -180 -110 {
lab=vcm}
N -180 -110 -180 -100 {
lab=vcm}
N -270 -150 -250 -150 {
lab=vss}
N -250 -150 -250 -120 {
lab=vss}
N -250 -120 -200 -120 {
lab=vss}
N 330 120 360 120 {
lab=#net4}
N 330 -50 360 -50 {
lab=#net5}
N 20 -120 20 120 {
lab=vss}
N 20 120 30 120 {
lab=vss}
N 140 80 140 90 {
lab=vss}
N 20 80 140 80 {
lab=vss}
N 10 30 10 70 {
lab=#net1}
N 10 30 30 30 {
lab=#net1}
N 20 50 30 50 {
lab=vss}
N 0 10 30 10 {
lab=vdd}
N 330 10 350 10 {
lab=#net5}
N 350 -50 350 10 {
lab=#net5}
N -10 190 360 190 {
lab=#net3}
N -10 140 -10 190 {
lab=#net3}
N -20 260 360 260 {
lab=#net2}
N -20 -60 -20 260 {
lab=#net2}
N 660 260 730 260 {
lab=vdd}
N 730 -130 730 260 {
lab=vdd}
N 110 -130 730 -130 {
lab=vdd}
N 140 -120 740 -120 {
lab=vss}
N 740 -120 740 300 {
lab=vss}
N 660 300 740 300 {
lab=vss}
N 660 230 740 230 {
lab=vss}
N 660 190 730 190 {
lab=vdd}
N 660 160 740 160 {
lab=vss}
N 660 120 730 120 {
lab=vdd}
N 660 -50 730 -50 {
lab=vdd}
N 660 -10 740 -10 {
lab=vss}
C {dinamic_CMP.sym} -180 -30 0 0 {name=x1}
C {rs_ff.sym} 180 140 0 0 {name=x2}
C {nand.sym} 180 -40 0 0 {name=x3}
C {devices/iopin.sym} -270 -130 2 0 {name=p1 lab=vcm}
C {devices/iopin.sym} -270 -150 2 0 {name=p2 lab=vss}
C {devices/iopin.sym} -270 -170 2 0 {name=p3 lab=vdd}
C {devices/ipin.sym} -330 -70 0 0 {name=p4 lab=inm}
C {devices/ipin.sym} -330 -50 0 0 {name=p5 lab=inp}
C {devices/ipin.sym} -330 -30 0 0 {name=p6 lab=clk}
C {devices/opin.sym} 660 140 0 0 {name=p7 lab=out}
C {devices/opin.sym} 660 -30 0 0 {name=p8 lab=done}
C {delay.sym} 180 30 0 1 {name=x4}
C {out_buf.sym} 510 -30 0 0 {name=x5}
C {out_buf.sym} 510 140 0 0 {name=x6}
C {out_buf.sym} 510 210 0 0 {name=x7}
C {out_buf.sym} 510 280 0 0 {name=x8}
C {devices/opin.sym} 660 210 0 0 {name=p9 lab=outp}
C {devices/opin.sym} 660 280 0 0 {name=p10 lab=outn}
