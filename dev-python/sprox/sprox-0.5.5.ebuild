# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.2.2 (rev. 214)

inherit distutils

DESCRIPTION="A package for creation of web widgets directly from database schema."
HOMEPAGE="http://www.bitbucket.org/percious/sprox/overview/"
SRC_URI="http://pypi.python.org/packages/source/s/sprox/${P}.tar.gz"
LICENSE="MIT"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/sqlalchemy-0.5_rc1
	>=dev-python/tw-forms-0.9.2
	>=dev-python/genshi-0.5"
DEPEND=""

src_install() {
	distutils_src_install

	rm -Rf "${D}/$(python_get_sitedir)"/tests || die "rm failed"
}
