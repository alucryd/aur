# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=steam-skin-ambiance
pkgver=3.9.1
pkgrel=3
pkgdesc="Ambiance skin for Steam Linux"
arch=('any')
url="http://iubuntu.cz/Steam/"
license=('GPL3')
depends=('steam')
optdepends=('steam-skin-manager: Easy skin installation')
source=("steam-skin-manager-${pkgver}.deb::http://iubuntu.cz/Steam/steam-skin-installer.deb")
sha256sums=('0ae53534232ef410839934bf6505da1f6d2c16f2a838b2d474b88bdec6a7585b')

build() {
  cd "${srcdir}"

  tar -xf data.tar.gz
}

package() {
  cd "${srcdir}"

  mkdir -p "${pkgdir}"/usr/share/steam/skins
  cp -dr --no-preserve=ownership usr/share/steam/skins/Ambiance "${pkgdir}"/usr/share/steam/skins/

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
