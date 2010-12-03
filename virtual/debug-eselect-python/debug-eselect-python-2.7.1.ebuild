# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

SLOT="2.7"
KEYWORDS="amd64"

DEBUG_DUMP_ACTIVE() {
	echo "DEBUG $1 $2 (slot ${SLOT}, version ${PV})"
	echo "DEBUG   \${active_python_2} = '${active_python_2}'"
	echo "DEBUG   \${active_python_3} = '${active_python_3}'"
	echo "DEBUG   \${active_python_main} = '${active_python_main}'"
	echo "DEBUG   \$(eselect python show --python2) = '$(eselect python show --python2)'"
	echo "DEBUG   \$(eselect python show --python3) = '$(eselect python show --python3)'"
	echo "DEBUG   \$(eselect python show) = '$(eselect python show)'"
}

save_active_python_version() {
	active_python_2=$(eselect python show --python2)
	active_python_3=$(eselect python show --python3)
	active_python_main=$(eselect python show)
}

pkg_preinst() {
	DEBUG_DUMP_ACTIVE Before ${FUNCNAME}

	save_active_python_version

	DEBUG_DUMP_ACTIVE After ${FUNCNAME}
}

repair_python_integration() {
	case "$1" in
	pkg_postinst)
		# Ensure active python on our line (either 2.x or 3.x)
		# If unset, use us
		if [[ -z "$(eselect python show --python${PV%%.*})" ]]; then
			eselect python set --python${PV%%.*} python${SLOT} || die
		fi

		# Ensure two symlinks are in place
		for symlink in ${EROOT%/}/usr/bin/python{,${PV%%.*}}; do
			[[ -f "${symlink}" ]] && continue
			einfo "Creating symlink: ${symlink}"
			ln -s python-wrapper "${symlink}" || die
		done
		;;

	pkg_postrm)
		# Ensure active python on our line (either 2.x or 3.x)
		# If unset, use latest
		if [[ -z "$(eselect python show --python${PV%%.*})" ]]; then
			eselect python update --python${PV%%.*} --if-unset || die
		fi
		;;

	*)
		die 'unsupported usage of repair_python_integration()'
		;;
	esac
}

restore_active_python_version() {
	if [[ -n "${active_python_2}" &&
			"${active_python_2}" != $(eselect python show --python2) ]] ; then
		einfo "Restoring active Python 2.x interpreter: ${active_python_2}"
		eselect python set --python2 "${active_python_2}"
	fi
	if [[ -n "${active_python_3}" &&
			"${active_python_3}" != $(eselect python show --python3) ]] ; then
		einfo "Restoring active Python 3.x interpreter: ${active_python_3}"
		eselect python set --python3 "${active_python_3}"
	fi

	if [[ -n "${active_python_main}" &&
			"${active_python_main}" != $(eselect python show) ]] ; then
		einfo "Restoring main active Python interpreter: ${active_python_main}"
		eselect python set "${active_python_main}"
	fi
}

pkg_postinst() {
	DEBUG_DUMP_ACTIVE Before ${FUNCNAME}

	restore_active_python_version
	repair_python_integration ${FUNCNAME}

	DEBUG_DUMP_ACTIVE After ${FUNCNAME}
}

pkg_postrm() {
	DEBUG_DUMP_ACTIVE Before ${FUNCNAME}

	repair_python_integration ${FUNCNAME}

	DEBUG_DUMP_ACTIVE After ${FUNCNAME}
}
