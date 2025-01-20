    create_ip -name clk_wiz -vendor xilinx.com -library ip -version 6.0 -module_name pll_1x256mhz
    set_property -dict [list \
      CONFIG.CLKIN1_JITTER_PS {312.5} \
      CONFIG.CLKOUT1_JITTER {188.836} \
      CONFIG.CLKOUT1_PHASE_ERROR {198.711} \
      CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {128} \
      CONFIG.CLKOUT2_JITTER {169.732} \
      CONFIG.CLKOUT2_PHASE_ERROR {198.711} \
      CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {256} \
      CONFIG.CLKOUT2_USED {true} \
      CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
      CONFIG.MMCM_CLKIN1_PERIOD {31.250} \
      CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
      CONFIG.MMCM_CLKOUT0_DIVIDE_F {8.000} \
      CONFIG.MMCM_CLKOUT1_DIVIDE {4} \
      CONFIG.NUM_OUT_CLKS {2} \
      CONFIG.PRIM_IN_FREQ {32} \
      CONFIG.USE_RESET {false} \
    ] [get_ips pll_1x256mhz]

generate_ip_module pll_1x256mhz
