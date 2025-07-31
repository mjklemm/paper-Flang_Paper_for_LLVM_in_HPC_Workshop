// HLFIR code for dynamic array:
// %ref_to_i_el = hlfir.designate %arr(%index)
%alloc_mem_ptr = fir.box_addr %arr_desc
%dim = arith.constant 0
%arr_bounds = fir.box_dims %arr_desc, %dim
%arr_shape = fir.shape_shift %arr_bounds#0, %arr_bounds#1
%ref_to_i_el = fir.array_coor %alloc_mem_ptr(%arr_shape)
                              %index