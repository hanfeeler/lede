define Device/glinet_ar300m_nand
  ATH_SOC := qca9533
  DEVICE_TITLE := GL-AR300M (NAND)
  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
  KERNEL_SIZE := 2048k
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  VID_HDR_OFFSET := 512
  IMAGES := factory.ubi sysupgrade.tar
  IMAGE/sysupgrade.tar := sysupgrade-tar
  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
endef
TARGET_DEVICES += glinet_ar300m_nand
