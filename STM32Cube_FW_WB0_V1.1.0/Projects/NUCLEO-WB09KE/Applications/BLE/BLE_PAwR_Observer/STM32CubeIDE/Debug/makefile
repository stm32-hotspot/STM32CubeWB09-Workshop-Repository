################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Utilities/subdir.mk
-include Middlewares/STM32_BLE/subdir.mk
-include Drivers/STM32WB0x_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/NUCLEO-WB09KE/subdir.mk
-include Application/User/System/Startup/subdir.mk
-include Application/User/System/Modules/RTDebug/subdir.mk
-include Application/User/System/Modules/RADIO_utils/subdir.mk
-include Application/User/System/Modules/Profiles/subdir.mk
-include Application/User/System/Modules/PKAMGR/subdir.mk
-include Application/User/System/Modules/NVMDB/subdir.mk
-include Application/User/System/Modules/Flash/subdir.mk
-include Application/User/System/Modules/subdir.mk
-include Application/User/System/Interfaces/subdir.mk
-include Application/User/System/Config/Debug_GPIO/subdir.mk
-include Application/User/Startup/subdir.mk
-include Application/User/STM32_BLE/Target/subdir.mk
-include Application/User/STM32_BLE/App/subdir.mk
-include Application/User/Core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := STM32CubeIDE
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
STM32CubeIDE.elf \

MAP_FILES += \
STM32CubeIDE.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
STM32CubeIDE.list \

OBJCOPY_HEX += \
STM32CubeIDE.hex \


# All Target
all: main-build

# Main-build Target
main-build: STM32CubeIDE.elf secondary-outputs

# Tool invocations
STM32CubeIDE.elf STM32CubeIDE.map: $(OBJS) $(USER_OBJS) C:\WB0\STM32Cube_FW_WB0_V1.1.0\Projects\NUCLEO-WB09KE\Applications\BLE\BLE_PAwR_Observer\STM32CubeIDE\STM32WB09KEVX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "STM32CubeIDE.elf" @"objects.list" $(USER_OBJS) -Wl,--start-group $(LIBS) -Wl,--end-group -mcpu=cortex-m0plus -T"C:\WB0\STM32Cube_FW_WB0_V1.1.0\Projects\NUCLEO-WB09KE\Applications\BLE\BLE_PAwR_Observer\STM32CubeIDE\STM32WB09KEVX_FLASH.ld" --specs=nosys.specs -Wl,-Map="STM32CubeIDE.map" -Wl,--gc-sections -static -L../../../../../../../Middlewares/ST/STM32_BLE/cryptolib -L../../../../../../../Middlewares/ST/STM32_BLE/stack/lib -z noexecstack --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

STM32CubeIDE.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "STM32CubeIDE.list"
	@echo 'Finished building: $@'
	@echo ' '

STM32CubeIDE.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "STM32CubeIDE.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) STM32CubeIDE.elf STM32CubeIDE.hex STM32CubeIDE.list STM32CubeIDE.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
