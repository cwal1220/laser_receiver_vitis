# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\workspace\laser_receiver_bitstream\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\workspace\laser_receiver_bitstream\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {laser_receiver_bitstream}\
-hw {E:\workspace\laser_receiver_project\laser_receiver_bitstream.xsa}\
-out {E:/workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {laser_receiver_bitstream}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config stdin "ps7_uart_0"
bsp config zynqmp_fsbl_bsp "false"
bsp config stdout "ps7_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp config xil_interrupt "false"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config stdin "ps7_uart_0"
bsp config stdout "ps7_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config stdin "ps7_coresight_comp_0"
bsp config stdout "ps7_coresight_comp_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
bsp reload
bsp reload
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform active {laser_receiver_bitstream}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform clean
platform generate
catch {platform remove uart_rx_tx_remove_intr}
domain active {zynq_fsbl}
bsp reload
bsp setlib -name xilflash -ver 4.9
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp setlib -name xilffs -ver 4.8
bsp setlib -name xilflash -ver 4.9
bsp setlib -name xilrsa -ver 1.6
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform clean
platform generate
platform generate -domains zynq_fsbl 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {laser_receiver_bitstream}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform config -updatehw {C:/Users/cwal1/Documents/project/laser_receiver_project/laser_receiver_block_wrapper.xsa}
platform generate
platform clean
platform generate
platform active {laser_receiver_bitstream}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_block_wrapper.xsa}
platform generate
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains zynq_fsbl 
platform generate
platform active {laser_receiver_bitstream}
platform generate -domains 
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform active {laser_receiver_bitstream}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform generate
platform active {laser_receiver_bitstream}
platform config -updatehw {E:/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform clean
platform generate
platform active {laser_receiver_bitstream}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp removelib -name xilffs
bsp write
bsp reload
catch {bsp regenerate}
platform clean
bsp write
bsp setlib -name xilffs -ver 4.8
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform clean
platform generate
platform active {laser_receiver_bitstream}
platform generate
platform clean
platform generate
platform active {laser_receiver_bitstream}
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform clean
platform clean
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform clean
platform clean
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform active {laser_receiver_bitstream}
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {D:/FPGA/workspace/laser_receiver_project/laser_receiver_bitstream.xsa}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
