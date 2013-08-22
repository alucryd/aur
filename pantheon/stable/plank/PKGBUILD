# Maintainer: Alucryd <alucryd at gmail dot com> 
# Contributor: Ner0 <darkelfdarkelf666@yahoo.co.uk>
# Contributor: dcelasun <dcelasun@gmail.com>

pkgname=plank
pkgver=0.3.0
pkgrel=3
pkgdesc="Elegant, simple, clean dock"
arch=('i686' 'x86_64')
url="https://launchpad.net/plank"
license=('GPL3')
depends=('bamf' 'hicolor-icon-theme' 'libdbusmenu-gtk3' 'libgee06')
makedepends=('gnome-common' 'intltool' 'vala0.16')
options=('!libtool')
install=${pkgname}.install
source=("https://launchpad.net/${pkgname}/1.0/${pkgver}/+download/${pkgname}-${pkgver}.tar.xz")
sha256sums=('9b73a6ef99bdf6ef0bb07ae5a461339b3c78c5237b0363b7174f2ffc60b5b523')

prepare() {
  cd ${pkgname}-${pkgver}

  sed -i 's|^#!.*python$|#!/usr/bin/python2|' $(grep -rl '^#!.*python')
}

build() {
  cd ${pkgname}-${pkgver}

  export VALAC='/usr/bin/valac-0.16'
  export VAPIGEN='/usr/bin/vapigen-0.16'
  ./configure --prefix='/usr' --sysconfdir='/etc' --disable-gee-0.8
  make
}

package() {
  cd ${pkgname}-${pkgver}

  make DESTDIR="${pkgdir}" GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 install
}

# vim: ts=2 sw=2 et:
