FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:${THISDIR}/../../recipes-aws/${BPN}/${BPN}:"

SRC_URI_arm = " \
    https://d1onfpft10uf5o.cloudfront.net/greengrass-core/downloads/${PV}/greengrass-linux-armv7l-${PV}.tar.gz;name=arm \
    file://greengrass.service \
    file://greengrass-init \
    file://my-core-setup.tar.gz;name=my-core-setup;subdir=my-core-setup \
    file://root.ca.pem \
"

SRC_URI_aarch64 = " \
    https://d1onfpft10uf5o.cloudfront.net/greengrass-core/downloads/${PV}/greengrass-linux-aarch64-${PV}.tar.gz;name=aarch64 \
    file://greengrass.service \
    file://greengrass-init \
    file://my-core-setup.tar.gz;name=my-core-setup;subdir=my-core-setup \
    file://root.ca.pem \
"

SRC_URI[my-core-setup.md5sum] = "41e862deb244c563d438e4604b8b3ccc"
SRC_URI[my-core-setup.sha256sum] ="3658af95e21723f52533e441f8e3a9d9e167a8bc4ada6fc957201b6455438961"

do_install_append() {
    install -m 0644 ${WORKDIR}/root.ca.pem ${D}/${BPN}/certs/
    install -m 0644 ${WORKDIR}/my-core-setup/certs/* ${D}/${BPN}/certs/
    install -m 0644 ${WORKDIR}/my-core-setup/config/config.json ${D}/${BPN}/config
}
