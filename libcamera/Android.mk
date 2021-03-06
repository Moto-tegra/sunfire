ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),sunfire)

LOCAL_PATH := $(call my-dir)
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS    := optional
LOCAL_MODULE_PATH    := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE         := camera.sunfire
LOCAL_SRC_FILES      := cameraHal.cpp
LOCAL_PRELINK_MODULE := false

LOCAL_SHARED_LIBRARIES += \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libmedia \
    libhardware \
    libcamera_client \
    libcamera \

LOCAL_SHARED_LIBRARIES += libdl

include $(BUILD_SHARED_LIBRARY)

endif
