# Trapezoidal integration in Fortran

A numerical integration experiment using the trapezoidal rule. The program integrates a function defined in `functions.f90` over the interval configured in `main.f90`, compares the result to a hard-coded reference value, and records the error for 1 to 1,000 subdivisions.

## Build and run

Install GNU Make, `gfortran`, and `gnuplot`, then:

```sh
make
./trapinteg
```

The program prints errors, writes error and step-size pairs to `data.dat`, and invokes `gnuplot` with `data_plot.plt`. A previous `data.dat` may be overwritten. Change the integration interval, function, or reference value in the source and rebuild for other experiments.

`types.f90` and `tools.f90` contain supporting definitions; `make clean` removes generated object and module files. The hard-coded reference is specific to the example and should be checked when changing inputs.
