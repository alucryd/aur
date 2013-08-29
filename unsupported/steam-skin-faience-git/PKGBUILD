# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=steam-skin-faience-git
pkgver=7
pkgrel=1
pkgdesc="WIP Faience skin for Steam Linux (highly unusable for now)"
arch=('any')
url="https://github.com/alucryd/steam-skin-faience"
license=('GPL3')
depends=('steam')
optdepends=('steam-skin-manager: Easy skin installation')
source=("git+https://github.com/alucryd/${pkgname%-*}.git")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  git rev-list --count HEAD
}

package() {
  mkdir -p "${pkgdir}"/usr/share/steam/skins/Faience
  cp -dr --no-preserve=ownership ${pkgname%-*} "${pkgdir}"/usr/share/steam/skins/Faience/with-buttons

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
