# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=pantheon-slingshot
pkgver=0.6
pkgrel=1
pkgdesc="a lightweight and stylish app launcher for Pantheon and other DEs."
arch=('i686' 'x86_64')
url="https://launchpad.net/slingshot"
license=('GPL3')
groups=('pantheon')
depends=('gnome-menus2' 'granite' 'libzeitgeist')
makedepends=('vala' 'cmake')
conflicts=('slingshot-bzr')
install=${pkgname}.install
source=("https://launchpad.net/slingshot/trunk/${pkgver}/+download/slingshot-${pkgver}.tar.bz2")
md5sums=('37b4e79d41be461fb06f62e886d9334d')

build() {
	cd "${srcdir}/slingshot-${pkgver}"
	cmake . -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF -DICONCACHE_UPDATE=OFF -DCMAKE_EXE_LINKER_FLAGS="-lm"
	make
}

package() {
	cd "${srcdir}/slingshot-${pkgver}"
	make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR="${pkgdir}" install
}
