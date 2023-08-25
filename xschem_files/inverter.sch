v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -40 -130 -10 {
lab=out}
N -170 -70 -170 20 {
lab=in}
N -130 -140 -130 -100 {
lab=vd}
N -130 50 -130 90 {
lab=gnd}
N -130 -30 -80 -30 {
lab=out}
N -210 -30 -170 -30 {
lab=in}
N -130 -100 -130 -70 {
lab=vd}
N -130 20 -130 50 {
lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} -150 20 0 0 {name=N0
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -150 -70 0 0 {name=P0
L=0.15
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -210 -30 0 0 {name=p1 lab=in}
C {devices/opin.sym} -80 -30 0 0 {name=p2 lab=out}
C {devices/iopin.sym} -130 -140 3 0 {name=p3 lab=vd}
C {devices/iopin.sym} -130 90 1 0 {name=p4 lab=gnd}
