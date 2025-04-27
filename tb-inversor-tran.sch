v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -100 -60 -60 {
lab=VDD}
N -60 60 -60 120 {
lab=GND}
N -330 -0 -330 30 {
lab=in}
N -330 90 -330 120 {
lab=GND}
N 40 0 80 0 {
lab=out}
N -430 90 -430 120 {
lab=GND}
N -430 -20 -430 30 {
lab=VDD}
N -160 0 -130 0 {
lab=in}
C {/home/edsonihp/ihp130_skel/tarefa1/inversor.sym} 20 0 0 0 {name=x1}
C {devices/code_shown.sym} 240 -70 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
op
tran 50p 20n
plot in out
.endc
"}
C {gnd.sym} -330 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -60 120 0 0 {name=l2 lab=GND}
C {vdd.sym} -60 -100 0 0 {name=l3 lab=VDD}
C {lab_pin.sym} -330 0 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 80 0 2 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} -430 60 0 0 {name=Vdd value=1.2 savecurrent=false}
C {gnd.sym} -430 120 0 0 {name=l4 lab=GND}
C {vdd.sym} -430 -20 0 0 {name=l5 lab=VDD}
C {lab_pin.sym} -160 0 0 0 {name=p3 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 250 150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/vsource.sym} -330 60 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 2n, 4n ) "}
