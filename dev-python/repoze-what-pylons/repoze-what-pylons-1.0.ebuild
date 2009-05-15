# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.1 (rev. 204)

inherit distutils

MY_PN="${PN/-/.}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The repoze.what v1 plugin for Pylons/TG2 integration"
HOMEPAGE="http://code.gustavonarea.net/repoze.what-pylons/"
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"
LICENSE="Repoze"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/repoze-what-1.0.4
	>=dev-python/pylons-0.9.7
	>=dev-python/decorator-3.0"
DEPEND=""

S="${WORKDIR}/${MY_P}"
