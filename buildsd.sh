rm egos.elf
cp ../fe310-sdk/software/sdcard/release/sdcard.elf ./egos.elf

rm builds/e300artydevkit/obj/*.mcs
make -f Makefile.e300artydevkit verilog
make -f Makefile.e300artydevkit mcs
