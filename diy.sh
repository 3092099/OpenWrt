#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
sed -i '/DTS_DIR:=$(LINUX_DIR)/a\BUILD_DATE_PREFIX := $(shell date +'%F')' ./include/image.mk
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(BUILD_DATE_PREFIX)-/g' ./include/image.mk
sed -i "s/DISTRIB_DESCRIPTION='OpenWrt '/DISTRIB_DESCRIPTION='OpenWrt VIP99 '/g" ./package/lean/default-settings/files/zzz-default-settings
sed -i "s/hostname='OpenWrt'/hostname='OpenWrt-SE'/g" ./package/base-files/files/bin/config_generate
curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/logo.jpg > ./package/luci-app-serverchan/root/usr/bin/serverchan/api/logo.jpg
curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml > ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml
sed -i 's/bootstrap/argon-18.06/g' ./feeds/luci/collections/luci/Makefile

rm -rf ./feeds/luci/themes/luci-theme-argon
rm -rf ./feeds/luci/applications/luci-app-wrtbwmon
rm -rf ./feeds/packages/net/adguardhome
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/luci/applications/luci-app-mosdns
rm -rf ./feeds/packages/net/mosdns
