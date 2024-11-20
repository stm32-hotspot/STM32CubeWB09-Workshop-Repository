################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/WB0/STM32Cube_FW_WB0_V1.1.0/Projects/NUCLEO-WB09KE/Applications/BLE/BLE_PAwR_Broadcaster/System/Modules/NVMDB/Src/nvm_db.c \
C:/WB0/STM32Cube_FW_WB0_V1.1.0/Projects/NUCLEO-WB09KE/Applications/BLE/BLE_PAwR_Broadcaster/System/Modules/NVMDB/Src/nvm_db_conf.c 

OBJS += \
./Application/User/System/Modules/NVMDB/nvm_db.o \
./Application/User/System/Modules/NVMDB/nvm_db_conf.o 

C_DEPS += \
./Application/User/System/Modules/NVMDB/nvm_db.d \
./Application/User/System/Modules/NVMDB/nvm_db_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/System/Modules/NVMDB/nvm_db.o: C:/WB0/STM32Cube_FW_WB0_V1.1.0/Projects/NUCLEO-WB09KE/Applications/BLE/BLE_PAwR_Broadcaster/System/Modules/NVMDB/Src/nvm_db.c Application/User/System/Modules/NVMDB/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DNUCLEO_WB09KE -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32WB09 -DDISABLE_WATCHDOG -c -I../../Core/Inc -I../../STM32_BLE/App -I../../STM32_BLE/Target -I../../System/Config/Debug_GPIO -I../../System/Interfaces -I../../System/Modules -I../../System/Modules/Flash -I../../System/Modules/NVMDB/Inc -I../../System/Modules/PKAMGR/Inc -I../../System/Modules/Profiles/Inc -I../../System/Modules/RADIO_utils/Inc -I../../System/Modules/RTDebug -I../../System/Startup -I../../../../../../../Utilities/trace/adv_trace -I../../../../../../../Drivers/STM32WB0x_HAL_Driver/Inc -I../../../../../../../Drivers/STM32WB0x_HAL_Driver/Inc/Legacy -I../../../../../../../Utilities/misc -I../../../../../../../Utilities/sequencer -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_BLE -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WB0X/Include -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/Common -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/CBC -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/CMAC -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/Common -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/ECB -I../../../../../../../Middlewares/ST/STM32_BLE/evt_handler/inc -I../../../../../../../Middlewares/ST/STM32_BLE/queued_writes/inc -I../../../../../../../Middlewares/ST/STM32_BLE/stack/include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/STM32WB0x-nucleo -O0 -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/System/Modules/NVMDB/nvm_db_conf.o: C:/WB0/STM32Cube_FW_WB0_V1.1.0/Projects/NUCLEO-WB09KE/Applications/BLE/BLE_PAwR_Broadcaster/System/Modules/NVMDB/Src/nvm_db_conf.c Application/User/System/Modules/NVMDB/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DNUCLEO_WB09KE -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32WB09 -DDISABLE_WATCHDOG -c -I../../Core/Inc -I../../STM32_BLE/App -I../../STM32_BLE/Target -I../../System/Config/Debug_GPIO -I../../System/Interfaces -I../../System/Modules -I../../System/Modules/Flash -I../../System/Modules/NVMDB/Inc -I../../System/Modules/PKAMGR/Inc -I../../System/Modules/Profiles/Inc -I../../System/Modules/RADIO_utils/Inc -I../../System/Modules/RTDebug -I../../System/Startup -I../../../../../../../Utilities/trace/adv_trace -I../../../../../../../Drivers/STM32WB0x_HAL_Driver/Inc -I../../../../../../../Drivers/STM32WB0x_HAL_Driver/Inc/Legacy -I../../../../../../../Utilities/misc -I../../../../../../../Utilities/sequencer -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_BLE -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WB0X/Include -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/Common -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/CBC -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/CMAC -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/Common -I../../../../../../../Middlewares/ST/STM32_BLE/cryptolib/Inc/AES/ECB -I../../../../../../../Middlewares/ST/STM32_BLE/evt_handler/inc -I../../../../../../../Middlewares/ST/STM32_BLE/queued_writes/inc -I../../../../../../../Middlewares/ST/STM32_BLE/stack/include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/STM32WB0x-nucleo -O0 -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-User-2f-System-2f-Modules-2f-NVMDB

clean-Application-2f-User-2f-System-2f-Modules-2f-NVMDB:
	-$(RM) ./Application/User/System/Modules/NVMDB/nvm_db.cyclo ./Application/User/System/Modules/NVMDB/nvm_db.d ./Application/User/System/Modules/NVMDB/nvm_db.o ./Application/User/System/Modules/NVMDB/nvm_db.su ./Application/User/System/Modules/NVMDB/nvm_db_conf.cyclo ./Application/User/System/Modules/NVMDB/nvm_db_conf.d ./Application/User/System/Modules/NVMDB/nvm_db_conf.o ./Application/User/System/Modules/NVMDB/nvm_db_conf.su

.PHONY: clean-Application-2f-User-2f-System-2f-Modules-2f-NVMDB

