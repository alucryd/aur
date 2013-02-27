# Contributor: Sander Deryckere  <sanderd17 AT gmail DOT com>
# Maintainer: Ner0

pkgname=faience-icon-theme
pkgver=0.5.1
pkgrel=1
pkgdesc="An icon theme based on Faenza"
url="http://tiheum.deviantart.com/art/Faience-icon-theme-255099649"
license=('GPL3')
arch=('any')
depends=('faenza-icon-theme')
provides=('gnome-icon-theme')
options=('!strip')
source=("https://launchpad.net/~tiheum/+archive/equinox/+files/${pkgname}_$pkgver.tar.gz")
md5sums=('9cda26d1c9c6a45e4aabae8782a08c4e')

package() {
  install -dm755 "$pkgdir/usr/share/icons/"

  cp -rf ${pkgname}-${pkgver%.*}/Faience* "$pkgdir/usr/share/icons/"
}
