SUMMARY = "Applications necessary for AWS Greengrass core"

inherit packagegroup

RDEPENDS_${PN} = " \
    greengrass \
    libseccomp \
    openssl \
    python-boto \
    python-boto3 \
"
