LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/include
LOCAL_SRC_FILES := \
	lib/activate.c lib/af.c lib/arcnet.c \
	lib/ash.c lib/ax25.c lib/ax25_gr.c \
	lib/ddp.c lib/ddp_gr.c lib/ec_hw.c \
	lib/econet.c lib/ether.c lib/fddi.c \
	lib/frame.c lib/getargs.c lib/getroute.c \
	lib/hdlclapb.c lib/hippi.c lib/hw.c \
	lib/inet.c lib/inet_gr.c lib/inet_sr.c \
	lib/inet6.c lib/inet6_gr.c lib/inet6_sr.c \
	lib/interface.c lib/ipx.c lib/ipx_gr.c \
	lib/ipx_sr.c lib/irda.c lib/loopback.c \
	lib/masq_info.c lib/netrom.c lib/netrom_gr.c \
	lib/netrom_sr.c lib/nstrcmp.c lib/ppp.c \
	lib/ppp_ac.c lib/proc.c lib/rose.c \
	lib/rose_gr.c lib/setroute.c lib/sit.c \
	lib/slip.c lib/slip_ac.c lib/sockets.c \
	lib/strip.c lib/tr.c lib/tunnel.c \
	lib/unix.c lib/util.c lib/x25.c \
	lib/x25_gr.c lib/x25_sr.c
LOCAL_MODULE := libnet-tools
LOCAL_MODULE_TAGS := eng
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/include
LOCAL_SRC_FILES := ifconfig.c
LOCAL_MODULE := ifconfig
LOCAL_MODULE_TAGS := eng
LOCAL_STATIC_LIBRARIES := libnet-tools
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/istweak
include $(BUILD_EXECUTABLE)
