# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=snap-elementary-bzr
pkgver=129
pkgrel=1
pkgdesc="A fast photo booth application designed for the Pantheon desktop."
arch=('i686' 'x86_64')
url="https://launchpad.net/snap-elementary"
license=('GPL3')
groups=('pantheon')
depends=('granite-bzr' 'cheese' 'gstreamer0.10')
makedepends=('bzr' 'vala' 'cmake')
conflicts=('snap-elementary')
install=${pkgname}.install

_bzrtrunk=lp:snap-elementary
_bzrmod=snap-elementary

build() {
	msg "Connecting to Bazaar server...."

	if [ -d $_bzrmod ] ; then
		cd $_bzrmod && bzr pull $_bzrtrunk -r $pkgver && cd ..
		msg "The local files are updated."
	else
		bzr branch $_bzrtrunk $_bzrmod -r $pkgver
	fi

	msg "BZR checkout done or server timeout"
	msg "Starting make..."

	cd ${_bzrmod}
	cmake . -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF
	make
}

package() {
	cd "${srcdir}/${_bzrmod}/"
	make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR="${pkgdir}" install
}
