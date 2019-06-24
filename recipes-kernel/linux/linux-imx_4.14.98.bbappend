patch_imx_v7_defconfig() {
    cat >> ${S}/arch/arm/configs/imx_v7_defconfig << EOM

# Greengrass Namespace
CONFIG_IPC_NS=y
CONFIG_UTS_NS=y
CONFIG_USER_NS=y
CONFIG_PID_NS=y
CONFIG_MULTIUSER=y
CONFIG_NAMESPACES=y
CONFIG_NET_NS=y

# Greengrass Cgroups
CONFIG_CGROUP_DEVICE=y
CONFIG_CGROUPS=y
CONFIG_MEMCG=y
CONFIG_CGROUP_FREEZER=y
CONFIG_CGROUP_PIDS=y

# Greengrass Others
CONFIG_POSIX_MQUEUE=y
CONFIG_OVERLAY_FS=y
CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
CONFIG_SECCOMP_FILTER=y
CONFIG_KEYS=y
CONFIG_SECCOMP=y
CONFIG_OF_OVERLAY=y
CONFIG_DEVPTS_MULTIPLE_INSTANCES=y

EOM
}

do_patch_append () {
    if d.getVar('DO_CONFIG_V7_COPY') == 'yes':
        bb.build.exec_func('patch_imx_v7_defconfig', d)
}
