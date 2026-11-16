# digital-lab

用 Verilog 手写的数字电路练习集

## Projects

| Directory | Description | Status |
| --- | --- | --- |
| `01-adder4` | 4 位行波进位加法器 + testbench | 完成 |

## How to run

```bash
cd 01-adder4

# Icarus：编译 + 仿真（跑完会生成 tb_adder4.vcd）
iverilog -o tb.vvp tb_adder4.v adder4.v full_adder.v
vvp tb.vvp > /dev/null

# Verilator：交叉验证同一份 RTL
verilator --binary --timing -j 0 -o tb_adder4 tb_adder4.v adder4.v full_adder.v
./obj_dir/tb_adder4 | wc -l

# 看波形
gtkwave tb_adder4.vcd &
```

预期：512 组输入全部通过；`wc -l` 返回 513（512 行结果 + 1 行 `$finish` 提示）。

## Environment

- WSL2 + Ubuntu 24.04
- Icarus Verilog 12.0
- Verilator 5.020
- GTKWave 3.3.116

