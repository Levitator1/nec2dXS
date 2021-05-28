FORTRAN:=$(FC)
ALL_TARGETS := nec2dxs
SOURCE := NEC2DXS.F
INCLUDE := PORT.INC NEC2D1K5.INC NEC2D500.INC NEC2D8K0.INC
INCLUDE += NEC2D11K.INC  NEC2D3K0.INC  NEC2D5K0.INC  NEC2DPAR.INC

all: $(ALL_TARGETS)

.PHONY: clean
clean:
	rm -f $(ALL_TARGETS) PORT.INC


PORT.INC: Makefile
	@echo "! Half a kilobyte should be more than enough for everyone. - Bill Gates" > $@
	@echo "     " "CHARACTER G77PORT*512" >> $@
	@echo "     " "G77PORT = '" `$(FORTRAN) --version | head -n 1`  "'" >> $@
	@echo $@ Generated

nec2dxs: $(SOURCE) $(INCLUDE)
	$(FORTRAN) -std=legacy -O2 $< -o $@

