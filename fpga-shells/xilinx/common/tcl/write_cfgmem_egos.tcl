# See LICENSE for license details.
#
# Create an MCS-format memory configuration file from a bitstream and an
# optional data file.

set script_program_dir [file dirname [info script]]
source [file join $script_program_dir {boards.tcl}]

if {$argc < 3 || $argc > 5} {
	puts $argc
	puts {Error: Invalid number of arguments}
    puts {Usage: write_cfgmem.tcl board mcsfile cpu_binary [earth_binary] [romdisk]}
	exit 1
}
lassign $argv board mcsfile cpu_binary earth_binary romdisk

if {![dict exists $::program::boards::spec $board]} {
	puts {Unsupported board}
	exit 1
}
set board [dict get $::program::boards::spec $board]

write_cfgmem -format mcs -interface [dict get $board iface] -size [dict get $board size] \
	-loadbit "up [dict get $board bitaddr] $cpu_binary" \
	-loaddata [expr {$earth_binary ne "" ? "up 0x400000 $earth_binary up 0x800000 $romdisk" : ""}] \
	-file $mcsfile -force
