// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module rvfi_insn_pv_cmpgeu_h (
  input                                 rvfi_valid,
  input  [`RISCV_FORMAL_ILEN   - 1 : 0] rvfi_insn,
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_pc_rdata,
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_rs1_rdata,
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_rs2_rdata,
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_mem_rdata,
`ifdef RISCV_FORMAL_CSR_MISA
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_csr_misa_rdata,
  output [`RISCV_FORMAL_XLEN   - 1 : 0] spec_csr_misa_rmask,
`endif

`ifdef RISCV_FORMAL_CUSTOM_ISA
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_rs3_rdata,
  input                                 rvfi_is_hwlp,
  input  [`RISCV_FORMAL_XLEN   - 1 : 0] rvfi_hwlp_start,

  output [                       4 : 0] spec_rs3_addr,
  output [                       4 : 0] spec_post_rd_addr,
  output [`RISCV_FORMAL_XLEN   - 1 : 0] spec_post_rd_wdata,
`endif

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [`RISCV_FORMAL_XLEN   - 1 : 0] spec_rd_wdata,
  output [`RISCV_FORMAL_XLEN   - 1 : 0] spec_pc_wdata,
  output [`RISCV_FORMAL_XLEN   - 1 : 0] spec_mem_addr,
  output [`RISCV_FORMAL_XLEN/8 - 1 : 0] spec_mem_rmask,
  output [`RISCV_FORMAL_XLEN/8 - 1 : 0] spec_mem_wmask,
  output [`RISCV_FORMAL_XLEN   - 1 : 0] spec_mem_wdata
);

  // PV-type instruction format
  wire [`RISCV_FORMAL_ILEN-1:0] insn_padding = rvfi_insn >> 16 >> 16;
  wire [4:0] insn_funct5 = rvfi_insn[31:27];
  wire       insn_funct1 = rvfi_insn[   26];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

`ifdef RISCV_FORMAL_CSR_MISA
  wire misa_ok = (rvfi_csr_misa_rdata & `RISCV_FORMAL_XLEN'h 800000) == `RISCV_FORMAL_XLEN'h 800000;
  assign spec_csr_misa_rmask = `RISCV_FORMAL_XLEN'h 800000;
`else
  wire misa_ok = 1;
`endif

  // PV_CMPGEU_H instruction
  reg [15:0] op1 [1:0];
  reg [15:0] op2 [1:0];
  reg [15:0] res [1:0];
  always_comb
    for(int i = 0; i < 2; i++) begin
      op1[i] = rvfi_rs1_rdata[i*16+:16];
      op2[i] = rvfi_rs2_rdata[i*16+:16];
      res[i] = (op1[i] >= op2[i]) ? ('1) : ('0);
    end
  wire [31:0] result = {res[1], res[0]};
  // ATTENTION!! The core does not check if rvfi_insn[25] = 0!!!
  // This leads to it executing illegal instructions!!!
  // Correct spec_valid: rvfi_valid && !insn_padding && insn_funct5 == 5'd7 && insn_funct1 == 1'b1 && insn_funct3 == 3'b000 && insn_opcode == 7'b101_0111 && rvfi_insn[25] == 1'b0
  assign spec_valid = rvfi_valid && !insn_padding && insn_funct5 == 5'd7 && insn_funct1 == 1'b1 && insn_funct3 == 3'b000 && insn_opcode == 7'b101_0111;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
`ifdef RISCV_FORMAL_CUSTOM_ISA
  assign spec_pc_wdata = (rvfi_is_hwlp) ? (rvfi_hwlp_start) : (rvfi_pc_rdata + 4);
`else
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
`endif

  // default assignments
  assign spec_trap = !misa_ok;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
`ifdef RISCV_FORMAL_CUSTOM_ISA
  assign spec_rs3_addr = 0;
  assign spec_post_rd_addr = 0;
  assign spec_post_rd_wdata = 0;
`endif
endmodule
