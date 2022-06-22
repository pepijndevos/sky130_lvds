magic -rcfile /usr/local/share/pdk/sky130B/libs.tech/magic/sky130B.magicrc -dnull -noconsole << EOF
drc off
box 0 0 0 0
cellname rename nfet_1v8_7x015
gencell sky130::sky130_fd_pr__nfet_01v8 nfet_1v8_7x015 w 7 l 0.15 guard 0 botc 0
gds write nfet_1v8_7x015.gds
quit -noprompt
EOF

echo hi
magic -rcfile /usr/local/share/pdk/sky130B/libs.tech/magic/sky130B.magicrc -dnull -noconsole << EOF
drc off
box 0 0 0 0
cellname rename pfet_1v8_7x015
gencell sky130::sky130_fd_pr__pfet_01v8 pfet_1v8_7x015 w 7 l 0.15 guard 0 botc 0
gds write pfet_1v8_7x015.gds
quit -noprompt
EOF

magic -rcfile /usr/local/share/pdk/sky130B/libs.tech/magic/sky130B.magicrc -dnull -noconsole << EOF
drc off
box 0 0 0 0
cellname rename pfet_g5v0d10v5_7x015
gencell sky130::sky130_fd_pr__pfet_g5v0d10v5 pfet_g5v0d10v5_7x05 w 10 l 0.5 guard 0 botc 0
gds write pfet_g5v0d10v5_7x015.gds
quit -noprompt
EOF

# vias

magic -rcfile /usr/local/share/pdk/sky130B/libs.tech/magic/sky130B.magicrc -dnull -noconsole << EOF
drc off
box 0 0 17 17
cellname rename mcon
sky130::mcon_draw
gds write mcon.gds
quit -noprompt
EOF

magic -rcfile /usr/local/share/pdk/sky130B/libs.tech/magic/sky130B.magicrc -dnull -noconsole << EOF
drc off
box 0 0 26 26
cellname rename via1
sky130::via1_draw
gds write via1.gds
quit -noprompt
EOF

magic -rcfile /usr/local/share/pdk/sky130B/libs.tech/magic/sky130B.magicrc -dnull -noconsole << EOF
drc off
box 0 0 28 28
cellname rename via2
sky130::via2_draw
gds write via2.gds
quit -noprompt
EOF

