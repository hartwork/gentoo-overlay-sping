# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.1 (rev. 204)

inherit distutils

MY_PN="Extremes"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Production-quality 'Min' and 'Max' objects (adapted from PEP 326)"
HOMEPAGE="http://pypi.python.org/pypi/Extremes"
SRC_URI="http://pypi.python.org/packages/source/E/Extremes/${MY_P}.zip"
LICENSE="ZPL"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="app-arch/unzip"

S="${WORKDIR}/${MY_P}"
