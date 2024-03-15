<?xml version="1.0" encoding="UTF-8"?>
<wavelist version="3">
  <insertion-point-position>25</insertion-point-position>
  <wave>
    <expr>clock</expr>
    <label/>
    <radix/>
  </wave>
  <spacer/>
  <wave>
    <expr>wrapper.uut.rvfi_valid_if</expr>
    <label/>
    <radix/>
  </wave>
  <wave>
    <expr>wrapper.uut.rvfi_valid_id</expr>
    <label/>
    <radix/>
  </wave>
  <wave>
    <expr>rvfi_valid</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_order</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_insn</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <spacer/>
  <wave>
    <expr>rvfi_halt</expr>
    <label/>
    <radix/>
  </wave>
  <wave>
    <expr>rvfi_trap</expr>
    <label/>
    <radix/>
  </wave>
  <wave>
    <expr>rvfi_intr</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_ixl</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_mode</expr>
    <label/>
    <radix>rvfi_mode</radix>
  </wave>
  <spacer/>
  <wave collapsed="true">
    <expr>rvfi_pc_rdata</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_pc_wdata</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <spacer/>
  <wave collapsed="true">
    <expr>rvfi_rs2_addr</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_rs1_addr</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_rs2_rdata</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_rs1_rdata</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <spacer/>
  <wave>
    <expr>wrapper.uut.ex_stage_i.wb_contention</expr>
    <label/>
    <radix/>
  </wave>
  <wave>
    <expr>wrapper.uut.ex_stage_i.regfile_alu_we_fw_o</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>wrapper.uut.ex_stage_i.regfile_alu_waddr_fw_o</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>wrapper.uut.rvfi_rd_addr_ex</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_rd_addr</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>checker_inst.spec_rd_addr</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <spacer/>
  <spacer/>
  <wave collapsed="true">
    <expr>rvfi_rd_wdata</expr>
    <label/>
    <radix>rvfi_pc_rdata</radix>
  </wave>
  <spacer/>
  <wave collapsed="true">
    <expr>rvfi_mem_addr</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_mem_rmask</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_mem_rdata</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_mem_wmask</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>rvfi_mem_wdata</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <spacer/>
  <spacer/>
  <spacer/>
  <wave>
    <expr>checker_inst.spec_valid</expr>
    <label/>
    <radix/>
  </wave>
  <spacer/>
  <wave>
    <expr>checker_inst.spec_trap</expr>
    <label/>
    <radix/>
  </wave>
  <spacer/>
  <wave collapsed="true">
    <expr>checker_inst.spec_pc_wdata</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <spacer/>
  <wave collapsed="true">
    <expr>checker_inst.spec_rs1_addr</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>checker_inst.spec_rs2_addr</expr>
    <label/>
    <radix>checker_inst.rd_addr</radix>
  </wave>
  <wave collapsed="true">
    <expr>checker_inst.spec_rd_wdata</expr>
    <label/>
    <radix>rvfi_pc_rdata</radix>
  </wave>
  <spacer/>
  <wave collapsed="true">
    <expr>checker_inst.spec_mem_addr</expr>
    <label/>
    <radix>rvfi_mem_wdata</radix>
  </wave>
  <wave collapsed="true">
    <expr>checker_inst.spec_mem_rmask</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>checker_inst.spec_mem_wmask</expr>
    <label/>
    <radix/>
  </wave>
  <wave collapsed="true">
    <expr>checker_inst.spec_mem_wdata</expr>
    <label/>
    <radix/>
  </wave>
  <highlightlist>
    <!--Users can remove the highlightlist block if they want to load the signal save file into older version of Jasper-->
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_cnt_data_i</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_counter_n</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_counter_q</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_dec_cnt_i</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_end_q</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_regid_i</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_start_q</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.hwlp_we_i</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.hwloop_regs_i.valid_i</expr>
      <color>builtin_yellow</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.id_stage_i.instr</expr>
      <color>builtin_red</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.if_valid</expr>
      <color>builtin_blue</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.instr_decompressed</expr>
      <color>builtin_blue</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.instr_valid_id_o</expr>
      <color>builtin_red</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.pc_id_o</expr>
      <color>builtin_red</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.pc_if_o</expr>
      <color>builtin_blue</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.pc_mux_i</expr>
      <color>builtin_blue</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.clear_i</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.in_addr_i</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.in_is_hwlp_i</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.in_rdata_i</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.in_replace2_i</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.in_valid_i</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.out_addr_o</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.out_is_hwlp_o</expr>
      <color>builtin_green</color>
    </highlight>
    <highlight>
      <expr>wrapper.uut.if_stage_i.prefetch_32.prefetch_buffer_i.fifo_i.out_ready_i</expr>
      <color>builtin_green</color>
    </highlight>
  </highlightlist>
</wavelist>
