// DO NOT EDIT -- auto-generated from generate.py

// I-type instruction format (shift variation)
wire [6:0] insn_funct7 = insn[31:25];
wire [4:0] insn_shamt = insn[24:20];
wire [4:0] insn_rs1 = insn[19:15];
wire [4:0] insn_funct3 = insn[14:12];
wire [4:0] insn_rd = insn[11:7];
wire [6:0] insn_opcode = insn[6:0];

// SRLI instruction
wire [XLEN-1:0] result = pre_rs1 >> insn_shamt;
always @(posedge clk) begin
  if (valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 101 && insn_opcode == 7'b 0010011) begin
    assert(rs1 == insn_rs1);
    assert(rd == insn_rd);
    assert(post_pc == pre_pc + 4);
    assert(post_rd == (rd ? result : 0));
  end
end
