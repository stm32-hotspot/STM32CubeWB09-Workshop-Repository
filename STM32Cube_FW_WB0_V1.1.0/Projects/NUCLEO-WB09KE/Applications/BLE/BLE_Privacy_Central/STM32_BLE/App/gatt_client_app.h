/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gatt_client_app.h
  * @author  MCD Application Team
  * @brief   Header for gatt_client_app.c module
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef GATT_CLIENT_APP_H
#define GATT_CLIENT_APP_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
typedef enum
{
  GATT_CLIENT_APP_IDLE,
  GATT_CLIENT_APP_CONNECTED,
  GATT_CLIENT_APP_DISCONNECTING,
  GATT_CLIENT_APP_DISCONN_COMPLETE,
  GATT_CLIENT_APP_DISCOVER_SERVICES,
  GATT_CLIENT_APP_DISCOVER_CHARACS,
  GATT_CLIENT_APP_DISCOVER_WRITE_DESC,
  GATT_CLIENT_APP_DISCOVER_NOTIFICATION_CHAR_DESC,
  GATT_CLIENT_APP_ENABLE_NOTIFICATION_DESC,
  GATT_CLIENT_APP_DISABLE_NOTIFICATION_DESC,
  /* USER CODE BEGIN GATT_CLIENT_APP_State_t*/

  /* USER CODE END GATT_CLIENT_APP_State_t */
}GATT_CLIENT_APP_State_t;

typedef enum
{
  PEER_CONN_HANDLE_EVT,
  PEER_DISCON_HANDLE_EVT,
  /* USER CODE BEGIN GATT_CLIENT_APP_Conn_Opcode_t*/

  /* USER CODE END GATT_CLIENT_APP_Conn_Opcode_t */
}GATT_CLIENT_APP_Conn_Opcode_t;

typedef enum
{
  PROC_GATT_DISC_ALL_PRIMARY_SERVICES,
  PROC_GATT_DISC_ALL_CHARS,
  PROC_GATT_DISC_ALL_DESCS,
  PROC_GATT_ENABLE_ALL_NOTIFICATIONS,
  /* USER CODE BEGIN ProcGattId_t*/

  /* USER CODE END ProcGattId_t */
}ProcGattId_t;

typedef struct
{
  GATT_CLIENT_APP_Conn_Opcode_t          ConnOpcode;
  uint16_t                              ConnHdl;
}GATT_CLIENT_APP_ConnHandle_Notif_evt_t;
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* SRVC_PRIVACY_UUID			0x66,0x9a,0x0c,0x20,0x00,0x08,0x68,0xb5,0xe8,0x11,0x5c,0xcc,0x20,0x3e,0xf0,0x57 */
/* CHAR_PRIVACY_UUID			0x66,0x9a,0x0c,0x20,0x00,0x08,0x68,0xb5,0xe8,0x11,0x5c,0xcc,0x21,0x3e,0xf0,0x57 */
/* Added uint16_t uuid for matching current available service and characteristics discovery framework (only uint16_t uuid are supported) */
/*  0x20 0x3e -> 0x3e20 */
/*  0x21 0x3e -> 0x3e21 */
#define SRVC_PRIVACY_UUID                                        0x3e20
#define CHAR_PRIVACY_UUID                                        0x3e21

/* USER CODE END EC */

/* External variables --------------------------------------------------------*/
/* USER CODE BEGIN EV */

/* USER CODE END EV */

/* Exported macros ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions ---------------------------------------------*/
void GATT_CLIENT_APP_Init(void);
uint8_t GATT_CLIENT_APP_Procedure_Gatt(uint8_t index, ProcGattId_t GattProcId);
void GATT_CLIENT_APP_Notification(GATT_CLIENT_APP_ConnHandle_Notif_evt_t *p_Notif);
tBleStatus GATT_CLIENT_APP_Set_Conn_Handle(uint8_t index, uint16_t connHdle);
uint8_t GATT_CLIENT_APP_Get_State(uint8_t index);
void GATT_CLIENT_APP_Discover_services(uint8_t index);
/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

#ifdef __cplusplus
}
#endif

#endif /*GATT_CLIENT_APP_H */