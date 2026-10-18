v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -80 120 -30 {lab=0}
N -30 -220 80 -220 {lab=#net1}
N -30 -220 -30 -170 {lab=#net1}
N -30 -170 -30 -140 {lab=#net1}
N -30 -140 80 -140 {lab=#net1}
N 80 -140 80 -110 {lab=#net1}
N -30 -80 -30 -30 {lab=0}
N -30 -30 120 -30 {lab=0}
N 120 -190 120 -140 {lab=#net2}
N 120 -290 120 -250 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 100 -110 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 -220 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -30 -110 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} 120 -30 0 0 {name=l1 lab=0}
C {vdd.sym} 120 -290 0 0 {name=l2 lab=VDD}
