#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#修改版本号
sed -i 's/OpenWrt/lmxslmxs Build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

# Add luci-app-usb-printer
git clone https://github.com/lmxslmslmxslms/OpenWrt-packages-1/tree/master/luci-app-usb-printer

# Add luci-app-ttyd
https://github.com/lmxslmslmxslms/OpenWrt-packages-1/tree/master/luci-app-ttyd

# Add luci-theme-infinityfreedom
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom package/openwrt-packages/luci-theme-infinityfreedom
