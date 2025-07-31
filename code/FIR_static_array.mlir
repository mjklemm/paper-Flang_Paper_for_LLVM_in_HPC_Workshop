// HLFIR code for static array:
// %ref_to_i_el = hlfir.designate %base_arr_ptr(%index)
%ref_to_i_el = fir.array_coor %base_arr_ptr(%arr_shape)
                              %index