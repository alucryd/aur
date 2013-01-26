# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=faenza-aegisub-icon
pkgver=1.0
pkgrel=4
pkgdesc="A Faenza-like icon for aegisub"
arch=('any')
url="http://alucryd.deviantart.com/art/Aegisub-Faenza-Icon-211996868"
license=('GPL')
depends=('faenza-icon-theme')
install=${pkgname}.install
source=('http://www.deviantart.com/download/211996868/aegisub_faenza_icon_by_alucryd-d3i7ttw.zip')
sha256sums=('e4d804b280b0b9350abeacf355579902b8b22fd9dfad213686ec84c136814501')

package() {
  cd "${srcdir}"/faenza-aegisub
  mkdir -p "${pkgdir}"/usr/share/icons
  cp -dr --no-preserve=ownership Faenza "${pkgdir}"/usr/share/icons/
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
