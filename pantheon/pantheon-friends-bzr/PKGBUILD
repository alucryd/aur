# Maintainer: Maxime Gauduin <alucryd@archlinux.org>

pkgname=pantheon-friends-bzr
pkgver=r2
pkgrel=1
pkgdesc='The Pantheon Address Book'
arch=('i686' 'x86_64')
url='https://launchpad.net/pantheon-friends'
license=('LGPL3')
depends=('granite-bzr' 'telepathy-glib')
makedepends=('bzr' 'cmake' 'vala')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
#install="${pkgname%-*}.install"
source=('bzr+lp:pantheon-friends')
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

  cmake .. -DCMAKE_INSTALL_PREFIX='/usr' -DGSETTINGS_COMPILE='FALSE'
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
