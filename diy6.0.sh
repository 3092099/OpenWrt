#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile

# Add a feed source
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/aliyundrive-webdav
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store package/luci-app-store
git clone https://github.com/thinktip/luci-theme-neobird.git package/luci-theme-neobird
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass package/luci-app-bypass
git clone https://github.com/fw876/helloworld.git package/ssr
git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/openwrt-passwall
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/immortalwrt/homeproxy.git package/luci-app-homeproxy
git clone -b luci-smartdns-new-version https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon-18.06
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos
git clone https://github.com/firkerword/luci-app-lucky.git package/lucky
