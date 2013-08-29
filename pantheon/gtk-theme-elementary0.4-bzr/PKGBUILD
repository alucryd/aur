# Maintainer: alucryd <alucryd at gmail dot com>
# Contributor: fresh24 <pascher dot christian at gmail dot com>

pkgname=gtk-theme-elementary4.0-bzr
pkgver=62
pkgrel=1
pkgdesc="elementary GTK theme"
arch=('i686' 'x86_64')
url="https://launchpad.net/egtk"
license=('GPL3')
depends=('gtk-engine-murrine' 'gtk-engine-unico')
makedepends=('bzr')
optdepends=('elementary-icon-theme')
provides=("${pkgname%4.0-*}" 'elementary-gtk-theme-bzr')
conflicts=("${pkgname%4.0-*}" 'elementary-gtk-theme-bzr')
source=("${pkgname%-*}::bzr+lp:egtk/4.x")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  bzr revno
}

package() {
  cd ${pkgname%-*}

  mkdir -p "${pkgdir}"/usr/share/themes/elementary
  cp -dr --no-preserve=ownership gtk-{2,3}.0 metacity-1 index.theme "${pkgdir}"/usr/share/themes/elementary/

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
