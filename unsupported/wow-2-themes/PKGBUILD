# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=wow-2-themes
pkgver=20121229
pkgrel=3
pkgdesc="Nice looking theme collection for GTK3, GTK2, Metacity, Unity, Xfwm4, Openbox, Emerald and Chrome/Chromium"
arch=('any')
url="http://nale12.deviantart.com/art/WOW-2-291358379"
license=('GPL')
optdepends=('gtk-engine-unico: GTK3 themes'
            'gtk-engines: GTK2 themes'
            'gtk-engine-murrine: GTK2 themes'
            'metacity: Metacity themes'
            'unity: Unity theme'
            'xfwm4: Xfwm4 themes'
            'openbox: Openbox themes')
source=("${pkgname}-${pkgver}.zip::http://fc05.deviantart.net/fs71/f/2013/022/3/d/wow_2_by_nale12-d4tgtkb.zip")
sha256sums=('91a95e4c6178a47f847f9ef86c24a74bf873a2ce9a65a1766ca7e8c2195e8039')

_left=false
_emerald=false
_chromium=false

package() {
  cd "${srcdir}"

# Install GTK, Metacity, Unity, Xfwm4 and Openbox themes
  mkdir -p "${pkgdir}"/usr/share/themes
  cp -dr --no-preserve=ownership WOW-2 "${pkgdir}"/usr/share/themes/
  cp -dr --no-preserve=ownership WOW-2_Dark_Toolbar "${pkgdir}"/usr/share/themes/WOW-2-Dark-Toolbar

# Install Metacity Left Buttons
  if [[ $_left == true ]] ; then
    cp -drf --no-preserve=ownership Left-Buttons-Metacity/metacity-1 "${pkgdir}"/usr/share/themes/{WOW-2,WOW-2-Dark-Toolbar}/
  fi

# Install Emerald theme
  if [[ $_emerald == true ]] ; then
    mkdir -p "${pkgdir}"/usr/share/emerald/themes
    cp -d --no-preserve=ownership WOW-2.emerald "${pkgdir}"/usr/share/emerald/themes/
  fi

# Install Chrome/Chromium theme
  if [[ $_chromium == true ]] ; then
    mkdir -p "${pkgdir}"/usr/share/chromium/themes
    cp -d --no-preserve=ownership WOW-2.crx "${pkgdir}"/usr/share/chromium/themes/
  fi

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
