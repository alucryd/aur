# Maintainer: alucryd <alucryd at gmail dot com>
# Contributor: Diego Principe <cdprincipei at gmail dot com>
# Contributor: Brett Lempereur <sordidpanda at gmail dot com>
# Contributor: Flamelab <panosfilip at gmail dot com>

pkgname=gnome-shell-extensions-git
pkgver=3.11.2.r771.e801c61
pkgrel=1
pkgdesc='Extensions for GNOME shell'
arch=('any')
url='http://live.gnome.org/GnomeShell/Extensions'
license=('GPL2')
depends=('gnome-shell' 'libgtop')
makedepends=('git' 'gnome-common' 'intltool')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
install="${pkgname%-*}.install"
source=("git+http://git.gnome.org/browse/${pkgname%-*}")
sha256sums=('SKIP')

_ext="alternate-tab apps-menu auto-move-windows drive-menu example launch-new-instance native-window-placement places-menu systemMonitor user-theme window-list windowsNavigator workspace-indicator"

pkgver() {
  cd ${pkgname%-*}

  printf "%s.r%s.%s" "$(git describe --tags | sed 's/-.*//')" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
  cd ${pkgname%-*}

  ./autogen.sh --prefix='/usr' --disable-schemas-compile --enable-extensions="${_ext}"
  make
}

package() {
  cd ${pkgname%-*}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
