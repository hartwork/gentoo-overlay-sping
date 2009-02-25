# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils autotools

DESCRIPTION="Bauer stereophonic-to-binaural DSP library"
HOMEPAGE="http://bs2b.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="media-libs/libsndfile"
RDEPEND="${DEPEND}"

src_install()
{
	emake install DESTDIR="${D}" || die "emake install failed"
}
