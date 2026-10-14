inherit enable-selinux

PACKAGECONFIG[selinux] = "-Dselinux=enabled,-Dselinux=disabled,libselinux"
RDEPENDS:${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
