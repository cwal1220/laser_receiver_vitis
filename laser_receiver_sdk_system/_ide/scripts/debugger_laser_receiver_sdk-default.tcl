# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\FPGA\workspace\laser_receiver_sdk_system\_ide\scripts\debugger_laser_receiver_sdk-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\FPGA\workspace\laser_receiver_sdk_system\_ide\scripts\debugger_laser_receiver_sdk-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Arty Z7 003017B7EB8AA" && level==0 && jtag_device_ctx=="jsn-Arty Z7-003017B7EB8AA-23727093-0"}
fpga -file D:/FPGA/workspace/laser_receiver_sdk/_ide/bitstream/laser_receiver_bitstream.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/FPGA/workspace/laser_receiver_bitstream/export/laser_receiver_bitstream/hw/laser_receiver_bitstream.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/FPGA/workspace/laser_receiver_sdk/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/FPGA/workspace/laser_receiver_sdk/Debug/laser_receiver_sdk.elf
configparams force-mem-access 0
bpadd -addr &main
