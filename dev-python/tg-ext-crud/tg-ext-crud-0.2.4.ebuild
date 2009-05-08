# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.2 (rev. 214)

inherit distutils

MY_PN="tgext.crud"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Crud Controller Extension for TG2"
HOMEPAGE="UNKNOWN"
SRC_URI="http://pypi.python.org/packages/source/t/${MY_PN}/${MY_P}.tar.gz"
LICENSE="MIT"
KEYWORDS=""
SLOT="0"
IUSE=""

DEPEND=">=dev-python/sprox-0.5.4.1
	>=dev-python/tw-forms-0.9"

S="${WORKDIR}/${MY_P}"
