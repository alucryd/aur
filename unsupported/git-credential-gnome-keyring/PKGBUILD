# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=git-credential-gnome-keyring
pkgver=1.8.3
pkgrel=1
pkgdesc="A git credential helper for the GNOME Keyring"
arch=('i686' 'x86_64')
url="http://git-scm.com/"
license=('GPL')
depends=('git' 'libgnome-keyring')

pkgver() {
  pacman -Q git | sed 's/.* \(.*\)-.*/\1/'
}

build() {
  cd "${srcdir}"

  cp -r /usr/share/git/credential/gnome-keyring/ .

  cd ${pkgname#*-*-}
  make
}

package() {
  cd "${srcdir}"/${pkgname#*-*-}

  install -Dm 755 ${pkgname} "${pkgdir}"/usr/lib/git-core/${pkgname}
}

# vim: ts=2 sw=2 et:
