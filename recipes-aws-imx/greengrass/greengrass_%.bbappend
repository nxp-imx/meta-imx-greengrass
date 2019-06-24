FILESEXTRAPATHS_prepend := "${THISDIR}/../../recipes-aws/${BPN}/${BPN}:"

SRC_URI_arm = " \
    https://d1onfpft10uf5o.cloudfront.net/greengrass-core/downloads/${PV}/greengrass-linux-armv7l-${PV}.tar.gz;name=arm \
    file://greengrass.service \
    file://greengrass-init \
"

SRC_URI_aarch64 = " \
    https://d1onfpft10uf5o.cloudfront.net/greengrass-core/downloads/${PV}/greengrass-linux-aarch64-${PV}.tar.gz;name=aarch64 \
    file://greengrass.service \
    file://greengrass-init \
"
