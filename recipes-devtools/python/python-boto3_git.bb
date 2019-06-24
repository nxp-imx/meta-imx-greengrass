DESCRIPTION = "AWS SDK for Python"
HOMEPAGE = "https://github.com/boto/boto"
SECTION = "devel/python"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=f6a383d75f587bd595dbc18cae94bcdb"

SRCREV = "c7893b5f510e6ba8c90c53712c5e7226aa50f6ba"
PV = "1.5.9+git${SRCPV}"
PR = "r0"
SRCNAME = "boto3"

SRC_URI = "git://github.com/boto/boto3.git;protocol=git"

S = "${WORKDIR}/git"

inherit setuptools

