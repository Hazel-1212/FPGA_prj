## Clock input (100 MHz)
set_property PACKAGE_PIN E3 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]

set_property PACKAGE_PIN A15 [get_ports {seg[0]}]  # Segment A
set_property PACKAGE_PIN B14 [get_ports {seg[1]}]  # Segment B
set_property PACKAGE_PIN A14 [get_ports {seg[2]}]  # Segment C
set_property PACKAGE_PIN B13 [get_ports {seg[3]}]  # Segment D
set_property PACKAGE_PIN A13 [get_ports {seg[4]}]  # Segment E
set_property PACKAGE_PIN A12 [get_ports {seg[5]}]  # Segment F
set_property PACKAGE_PIN B12 [get_ports {seg[6]}]  # Segment G