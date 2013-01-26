# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=faenza-mkvtoolnix-icon
pkgver=1.0
pkgrel=4
pkgdesc="A Faenza-like icon for mkvtoolnix"
arch=('any')
url="http://alucryd.deviantart.com/art/MKVToolNix-Faenza-Icons-211997774"
license=('GPL')
depends=('faenza-icon-theme')
install=${pkgname}.install
source=('http://www.deviantart.com/download/211997774/mkvtoolnix_faenza_icons_by_alucryd-d3i7uj2.zip')
sha256sums=('904d75e07d48e9beebd9c98477026e9048bed06b0a63fe92da929052a1bd85d2')

package() {
  cd "${srcdir}"/faenza-mkvtoolnix
  mkdir -p "$pkgdir"/usr/share/icons
  cp -dr --no-preserve=ownership Faenza "${pkgdir}"/usr/share/icons/
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
