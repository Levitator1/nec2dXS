# nec2dXS
## Levitator Branch v1.0

4nec2 antenna simulator/modeler from: https://www.qsl.net/4nec2/

These are minor changes to get the simulator to compile under gfortran so that it can be used under Linux.
This build completes under Debian 10/Buster (gfortran 8.3.0-6).

A simple GNU Makefile has been added.

To build:

1. Edit NEC2DPAR.INC, if desired. Defaults are probably fine. It seems as though all of the settings here are either
   to accomodate early/primitive coding practices lacking dynamic memory, or to accomdate highly memory-constrained
   machines dating back to the days of punchcards. Indeed, the input records are still referred to as "cards".
2. `make` to build 
3. That's all.
4. `make clean` to clean

Now it's time to test it and see whether it produces meaningful results.

Levitator (K3YAB)
Levitat0r@protonmail.com

