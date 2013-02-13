# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=gnome-cursors-fix
pkgver=3.6
pkgrel=1
pkgdesc="A fix for the ugly x11 cursors in vanilla Gnome 3"
arch=('any')
url="http://www.gnome.org/"
license=('GPL3')
depends=('gnome-themes-standard')

package() {
  install -dm 755 "${pkgdir}"/usr/share/icons/default
  echo "[Icon Theme]" >> "${pkgdir}"/usr/share/icons/default/index.theme
  echo "Inherits=Adwaita" >> "${pkgdir}"/usr/share/icons/default/index.theme
  chmod 644 "${pkgdir}"/usr/share/icons/default/index.theme
}

# vim: ts=2 sw=2 et:
