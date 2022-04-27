require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}

PR_append .= ".1"

do_install_append () {
        # Adds the proper env support for pam_env
        echo "PATH=/bin:/usr/bin:/sbin:/usr/sbin" >> ${D}${sysconfdir}/environment
}
