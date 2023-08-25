v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 370 490 390 {
lab=GND}
N 720 220 720 240 {
lab=GND}
N 625 365 625 390 {
lab=GND}
N 580 310 590 310 {
lab=in}
N 490 290 490 310 {
lab=in}
N 720 140 720 160 {
lab=vd}
N 625 240 625 255 {
lab=vd}
N 740 310 750 310 {
lab=out}
C {devices/gnd.sym} 625 390 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 490 390 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 720 240 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 490 290 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 580 310 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 720 140 0 0 {name=p3 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 625 240 0 0 {name=p4 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 750 310 2 0 {name=p5 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 900 190 0 0 {name=simulation only_toplevel=false value="
*.TRAN TSTEP TSTOP <TSTART <TMAX>> <UIC>

.control
save all
tran 0.01n 5n
plot in out
.endc
"}
C {devices/code.sym} 970 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {/home/hadassaju/prjects/inverter.sym} 750 330 0 0 {name=x1}
C {devices/sqwsource.sym} 490 340 0 0 {name=Vin vhi=3.5 freq=250e6}
C {devices/vsource.sym} 720 190 0 0 {name=Vdd value=3.5}
