LOCAL_PATH := $(call my-dir)

###########################################################################
# MTK BT CHIP INIT LIBRARY INDEPENDENT OF STACK
###########################################################################
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  mtk.c \
  radiomgr.c \
  radiomod.c

LOCAL_C_INCLUDES := \
  device/huawei/y5/bluetooth-mtk/include/libnvram \
  device/huawei/y5/bluetooth-mtk/include \
  $(LOCAL_PATH)/../inc

LOCAL_CFLAGS += -DMTK_CONSYS_MT6735

LOCAL_MODULE := libbluetooth_mtk_pure
LOCAL_SHARED_LIBRARIES := liblog libcutils libnvram
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

###########################################################################
# BT ENGINEER MODE
###########################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES := bt_em.c

LOCAL_C_INCLUDES := \
  $(LOCAL_PATH)/../inc

LOCAL_MODULE := libbluetoothem_mtk
LOCAL_SHARED_LIBRARIES := liblog libdl
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

################ BT RELAYER ##################

include $(CLEAR_VARS)

LOCAL_SRC_FILES := bt_relayer.c

LOCAL_C_INCLUDES := \
  $(LOCAL_PATH)/../inc

LOCAL_MODULE := libbluetooth_relayer
LOCAL_SHARED_LIBRARIES := liblog libcutils libbluetoothem_mtk
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

