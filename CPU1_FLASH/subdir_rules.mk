################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -Ooff --include_path="H:/sciebo/01_Bachelorarbeit_Noah_Duenninghaus/08_Mikrocontroller_Steuerungseinheit/workspace/Controller_SiC_Aging_Testbench" --include_path="C:/ti/C2000Ware_5_02_00_00/device_support/f2837xd/common/include" --include_path="C:/ti/C2000Ware_5_02_00_00/device_support/f2837xd/headers/include" --include_path="H:/sciebo/01_Bachelorarbeit_Noah_Duenninghaus/08_Mikrocontroller_Steuerungseinheit/workspace/Controller_SiC_Aging_Testbench/device" --include_path="C:/ti/C2000Ware_5_02_00_00/driverlib/f2837xd/driverlib" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_DUAL_HEADERS --define=CPU1 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -Ooff --include_path="H:/sciebo/01_Bachelorarbeit_Noah_Duenninghaus/08_Mikrocontroller_Steuerungseinheit/workspace/Controller_SiC_Aging_Testbench" --include_path="C:/ti/C2000Ware_5_02_00_00/device_support/f2837xd/common/include" --include_path="C:/ti/C2000Ware_5_02_00_00/device_support/f2837xd/headers/include" --include_path="H:/sciebo/01_Bachelorarbeit_Noah_Duenninghaus/08_Mikrocontroller_Steuerungseinheit/workspace/Controller_SiC_Aging_Testbench/device" --include_path="C:/ti/C2000Ware_5_02_00_00/driverlib/f2837xd/driverlib" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_DUAL_HEADERS --define=CPU1 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


