# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.1 (rev. 204)

inherit distutils

MY_PN="ToscaWidgets"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Web widget creation toolkit based on TurboGears widgets"
HOMEPAGE="http://toscawidgets.org/"
SRC_URI="http://pypi.python.org/packages/source/T/${MY_PN}/${MY_P}.tar.gz"
LICENSE="MIT"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""
S="${WORKDIR}/${MY_P}"

RDEPEND="dev-python/webob
	>=dev-python/simplejson-2.0"
DEPEND="dev-python/setuptools"

