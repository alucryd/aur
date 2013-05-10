# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor: Ner0 <darkelfdarkelf666@yahoo.co.uk>

pkgname=dexter-contacts-bzr
pkgver=1070
pkgrel=1
pkgdesc="The contacts manager from Pantheon"
arch=('i686' 'x86_64')
url="https://launchpad.net/dexter-contacts"
license=('GPL3')
depends=('gtk3' 'granite-bzr' 'glib2' 'gnome-desktop' 'folks' 'libnotify' 'evolution-data-server' 'gnome-online-accounts' 'libgee06')
makedepends=('bzr' 'make')
source=("bzr+lp:${pkgname%-*}")
sha256sums=('SKIP')

pkgver() {
  cd "${srcdir}"/${pkgname%-*}

  bzr revno
}

build() {
  cd "${srcdir}"/${pkgname%-*}

  ./autogen.sh --prefix=/usr
  make
}

package() {
  cd "${srcdir}"/${pkgname%-*}

  make DESTDIR="${pkgdir}" install
}

# vim:set ts=2 sw=2 et:
