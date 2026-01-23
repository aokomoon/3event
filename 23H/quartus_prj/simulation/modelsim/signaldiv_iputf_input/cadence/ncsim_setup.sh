
cp -f D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0_3n1024sin.hex ./
cp -f D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0_1n1024cos.hex ./
cp -f D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0_2n1024cos.hex ./
cp -f D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0_1n1024sin.hex ./
cp -f D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0_2n1024sin.hex ./
cp -f D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0_3n1024cos.hex ./

ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_text_pkg.vhd"                    -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_math_pkg.vhd"                    -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_lib_pkg.vhd"                     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_roundsat.vhd"                    -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"       -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd" -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvlog -sv  "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/submodules/fftsign_fft_ii_0.sv"                       -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvlog      "D:/3event/23H/quartus_prj/ip_core/fft/fftsign/simulation/fftsign.v"                                                                               
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/cordic/cordic/simulation/submodules/dspba_library_package.vhd"               -work CORDIC_0 -cdslib <<CORDIC_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/cordic/cordic/simulation/submodules/dspba_library.vhd"                       -work CORDIC_0 -cdslib <<CORDIC_0>>
ncvhdl -v93 "D:/3event/23H/quartus_prj/ip_core/cordic/cordic/simulation/submodules/cordic_CORDIC_0.vhd"                     -work CORDIC_0 -cdslib <<CORDIC_0>>
ncvlog      "D:/3event/23H/quartus_prj/ip_core/cordic/cordic/simulation/cordic.v"                                                                              
