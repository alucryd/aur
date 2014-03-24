# Maintainer: Maxime Gauduin <alucryd@gmail.com>
# Contributor: Lukas Miczka <lukascpu@gmail.com>
# Contributor: l0nk <l0nk@maumene.com>

pkgname=gmpc-shout
pkgver=0.20.0
pkgrel=1
pkgdesc='Play shout or httpd stream inside GMPC'
arch=('i686' 'x86_64')
url='http://sarine.nl/gmpc/'
license=('GPL')
depends=('gmpc' 'libmpd' 'libxml2')
makedepends=('intltool')
source=("http://download.sarine.nl/Programs/gmpc/0.20.0/${pkgname}-${pkgver}.tar.gz")
sha256sums=('0727e71f422a7b41da9705ab38ccfd13fd8203e1975dff6c34e55e7f957da3df')

build() {
  cd ${pkgname}-${pkgver}

  ./configure --prefix='/usr'
  make
}

package() {
  cd ${pkgname}-${pkgver}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
