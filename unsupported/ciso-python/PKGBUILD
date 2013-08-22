# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=ciso-python
pkgver=1.0
pkgrel=2
pkgdesc="CISO compressor, supports ISO over 2GB"
arch=('any')
url="https://procfw.googlecode.com"
license=('GPL')
depends=('python2' 'zlib')
conflicts=('ciso')
source=("https://procfw.googlecode.com/hg/contrib/ciso.py")
sha256sums=('d7da07bed22f9788c483b536950db888c1b44ad58ec6ccb303d0e9b891e11cb9')

prepare() {
  mv ciso.py __init__.py
  sed 's|^#!.*python$|#!/usr/bin/python2|' -i *.py
}

build() {
  python2 -Om compileall .
}

package() {
  install -dm 755  "${pkgdir}"/usr/{bin,lib/python2.7/site-packages/ciso}
  install -m 755 __init__.py* "${pkgdir}"/usr/lib/python2.7/site-packages/ciso/
  ln -s /usr/lib/python2.7/site-packages/ciso/__init__.py "${pkgdir}"/usr/bin/ciso
}

# vim: ts=2 sw=2 et:
