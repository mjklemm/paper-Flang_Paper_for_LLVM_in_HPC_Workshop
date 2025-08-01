omp.target map_entries(...) {
  %10 = fir.alloca !fir.array<2xi64>
      {bindc_name = ".tmp.arrayctor"}
  ...
  omp.terminator
}