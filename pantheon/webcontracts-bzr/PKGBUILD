# Maintainer: Maxime Gauduin <alucryd@gmail.com>

pkgname=webcontracts-bzr
pkgver=r26
pkgrel=1
pkgdesc='Standalone contracts for web services'
arch=('i686' 'x86_64')
url='https://launchpad.net/webcontracts'
license=('GPL3')
depends=('json-glib' 'libpantheon' 'rest' 'switchboard' 'webkitgtk3')
makedepends=('bzr' 'cmake' 'vala')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
install="${pkgname%-*}.install"
source=('bzr+lp:webcontracts')
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  printf "r%s" "$(bzr revno)"
}

build() {
  cd ${pkgname%-*}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_BUILD_TYPE='Release' -DCMAKE_INSTALL_PREFIX='/usr' -DGSETTINGS_COMPILE='OFF'
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
