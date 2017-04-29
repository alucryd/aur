# Maintainer: Maxime Gauduin <alucryd@archlinux.org>

pkgname=wingpanel-indicator-network
pkgver=2.0.2
pkgrel=1
pkgdesc='Network indicator for Wingpanel'
arch=('i686' 'x86_64')
url='https://launchpad.net/wingpanel-indicator-network'
license=('GPL3')
groups=('pantheon')
depends=('glib2' 'glibc' 'gtk3' 'libnm-glib'
         'libgranite.so' 'libwingpanel-2.0.so')
makedepends=('cmake' 'nm-connection-editor' 'vala' 'wingpanel')
source=("https://launchpad.net/wingpanel-indicator-network/loki/${pkgver}/+download/wingpanel-indicator-network-${pkgver}.tar.xz")
sha256sums=('d3da96730882929ac81b056ca1c225b981ef346cae15291ed2e415885a71a4d6')

prepare() {
  cd wingpanel-indicator-network-${pkgver}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build
}

build() {
  cd wingpanel-indicator-network-${pkgver}/build

  cmake .. \
    -DCMAKE_BUILD_TYPE='Release' \
    -DCMAKE_INSTALL_PREFIX='/usr' \
    -DCMAKE_INSTALL_LIBDIR='/usr/lib' \
    -DGSETTINGS_COMPILE='FALSE'
  make
}

package() {
  cd wingpanel-indicator-network-${pkgver}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
