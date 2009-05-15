# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.2 (rev. 214)

inherit distutils

MY_PN="${PN/zope/zope.}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Zope3 Internationalization Support"
HOMEPAGE="http://pypi.python.org/pypi/zope.i18n"
SRC_URI="http://pypi.python.org/packages/source/z/${MY_PN}/${MY_P}.tar.gz"
LICENSE="ZPL"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND="dev-python/pytz
	net-zope/zopeschema
	net-zope/zopei18nmessageid
	net-zope/zopecomponent
	net-zope/zopeconfiguration
	dev-python/python-gettext"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
