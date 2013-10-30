# Maintainer: alucryd <alucryd at gmail dot com>

pkgname=pantheon-wallpaper-bzr
pkgver=34
pkgrel=1
pkgdesc='The elementary wallpaper drawer'
arch=('i686' 'x86_64')
url='https://launchpad.net/pantheon-wallpaper'
license=('GPL3')
depends=('granite')
makedepends=('bzr' 'cmake' 'vala')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
install="${pkgname%-*}.install"
source=("bzr+lp:${pkgname%-*}")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  bzr revno
}

build() {
  cd ${pkgname%-*}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_INSTALL_PREFIX='/usr' -DGETTINGS_COMPILE='OFF'
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
