# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.1 (rev. 204)

inherit distutils

MY_PN="${PN/-/.}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Authorization framework for WSGI applications"
HOMEPAGE="http://static.repoze.org/whatdocs/"
SRC_URI="http://pypi.python.org/packages/source/r/${MY_PN}/${MY_P}.tar.gz"
LICENSE="Repoze"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/repoze-who-1.0
	>=dev-python/repoze-who-testutil-1.0_beta2
	>=dev-python/pastescript-1.7"
DEPEND=""

S="${WORKDIR}/${MY_P}"
