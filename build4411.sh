cp ../freedom-e-sdk/software/egos/release/egos.elf ./
rm builds/e300artydevkit/obj/*.mcs
make -f Makefile.e300artydevkit verilog
make -f Makefile.e300artydevkit mcs
