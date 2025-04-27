v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 0 -140 20 {
lab=out}
N -140 -100 -140 -80 {
lab=vdd}
N -140 100 -140 130 {
lab=gnd}
N -140 50 -80 50 {
lab=gnd}
N -80 50 -80 100 {
lab=gnd}
N -140 100 -80 100 {
lab=gnd}
N -140 80 -140 100 {
lab=gnd}
N -140 -50 -90 -50 {
lab=vdd}
N -90 -100 -90 -50 {
lab=vdd}
N -140 -100 -90 -100 {
lab=vdd}
N -140 -120 -140 -100 {
lab=vdd}
N -140 0 -60 -0 {
lab=out}
N -140 -20 -140 0 {
lab=out}
N -180 -0 -180 50 {
lab=in}
N -240 -0 -180 -0 {
lab=in}
N -180 -50 -180 -0 {
lab=in}
C {sg13g2_pr/sg13_lv_nmos.sym} -160 50 0 0 {name=M1
l=0.15u
w=0.45u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -160 -50 0 0 {name=M2
l=0.15u
w=0.9u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -60 0 0 0 {name=p1 lab=out}
C {iopin.sym} -140 -120 3 0 {name=p2 lab=vdd}
C {iopin.sym} -140 130 1 0 {name=p3 lab=gnd}
C {iopin.sym} -240 0 2 0 {name=p4 lab=in}
