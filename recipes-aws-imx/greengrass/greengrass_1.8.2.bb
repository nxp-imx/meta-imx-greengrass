# Copyright (C) 2019, Digi International Inc.

require recipes-aws/greengrass/greengrass.inc

#
# The Amazon Greengrass Core Product includes the following third-party software/licensing:
# github.com/aws/aws-sdk-go/; version 1.15.65 -- https://github.com/aws/aws-sdk-go/
# github.com/coreos/go-systemd/; version 10 -- https://github.com/coreos/go-systemd/
# github.com/docker/docker; version 1.12.0-rc4 -- https://github.com/docker/docker
# github.com/docker/go-units; version 0.3.1 -- https://github.com/docker/go-units
# github.com/go-ini/ini; version 1.32.0 -- https://github.com/go-ini/ini
# github.com/jmespath/go-jmespath; version 0.2.2 -- https://github.com/jmespath/go-jmespath
# github.com/mwitkow/go-http-dialer; version 0.1 -- https://github.com/mwitkow/go-http-dialer
# github.com/opencontainers/runc; version 1.0.0-rc3 -- https://github.com/opencontainers/runc
# github.com/opencontainers/runtime-spec; version 1.0.0-rc5 -- https://github.com/opencontainers/runtime-spec
# github.com/pquerna/ffjson; version 1.0 -- https://github.com/pquerna/ffjson
# github.com/vishvananda/netlink; version 0.1 -- https://github.com/vishvananda/netlink
#
# And the following Licenses:
LIC_FILES_CHKSUM = " \
    file://ggc/core/THIRD-PARTY-LICENSES;md5=70018c9eb1875d260c975eef52c10657 \
"

SRC_URI[arm.md5sum] = "00726266bd18bd4ba38798f502db2646"
SRC_URI[arm.sha256sum] = "cf12dc09424e2825cff993d31f6df33eaae417a50a877a8962d20b0f3e7a06c1"

# For ARCH64 we use another tarball.
SRC_URI[aarch64.md5sum] = "d241b0d7c5f28429d9cba7feffaa6ae4"
SRC_URI[aarch64.sha256sum] = "ee65a15eb32cc2a054b4d9ff6f34f06c2254fcf69ce76dc22b3d850c33239fc8"
