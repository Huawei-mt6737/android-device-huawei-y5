LOCAL_PATH := $(call my-dir)

###########################################################################
# MTK BT CHIP INIT LIBRARY FOR BLUEDROID
###########################################################################
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  mtk.c \
  radiomgr.c \
  radiomod.c

LOCAL_C_INCLUDES := \
  system/bt/hci/include \
  device/huawei/y5/bluetooth-mtk/include/libnvram \
  device/huawei/y5/bluetooth-mtk/include

LOCAL_CFLAGS += -DMTK_CONSYS_MT6735

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libbluetooth_mtk
LOCAL_SHARED_LIBRARIES := liblog libcutils libnvram
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

###########################################################################
# MTK BT DRIVER FOR BLUEDROID
###########################################################################
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  bt_drv.c

LOCAL_C_INCLUDES := \
  system/bt/hci/include

LOCAL_CFLAGS += -DMTK_BT_COMMON

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libbt-vendor
LOCAL_SHARED_LIBRARIES := liblog libbluetooth_mtk
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
