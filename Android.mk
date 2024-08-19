ifneq ($(filter hammer_iron_4,$(TARGET_DEVICE)),)

LOCAL_PATH := device/myphone/hammer_iron_4

include $(call all-makefiles-under,$(LOCAL_PATH))

endif