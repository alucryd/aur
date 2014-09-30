# Maintainer: Maxime Gauduin <alucryd@archlinux.org>

pkgname=elementary-wallpapers-bzr
pkgver=r1
pkgrel=1
pkgdesc='elementary wallpaper collection'
arch=('any')
url='https://launchpad.net/elementary-community/elementary-wallpaper-collection'
license=('GPL3')
makedepends=('bzr')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
options=('!emptydirs')
source=("${pkgname%-*}::bzr+http://bazaar.launchpad.net/~versable/elementary-community/elementary-wallpaper-collection/")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  printf "r%s" "$(bzr revno)"
}

package() {
  cd ${pkgname%-*}

  install -dm 755 "${pkgdir}"/usr/share
  cp -dr --no-preserve=ownership {,"${pkgdir}"/usr/share/}backgrounds
}

# vim: ts=2 sw=2 et:
