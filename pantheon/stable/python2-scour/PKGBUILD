# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor: N30N <archlinux at alunamation dot com>

pkgname=python2-scour
pkgver=0.26
pkgrel=1
pkgdesc="An SVG scrubber"
arch=('any')
url="http://www.codedread.com/scour/"
license=('APACHE')
depends=("python2")
source=("http://www.codedread.com/${pkgname#*-}/${pkgname#*-}-${pkgver}.zip")
sha256sums=('bb9ff799ed5590ac6611a1d7325d722541eb9b18937dcf40b086d7d35b7a2a1f')

build() {
  cd "${srcdir}"/${pkgname#*-}

# Patch
  mv scour.py __init__.py
  sed -i 's|#!/usr/bin/env python|#!/usr/bin/python2|' *.py

# Build
  python2 -m compileall .
}

package() {
  cd "${srcdir}"/${pkgname#*-}

# Install
  install -dm 755  "${pkgdir}"/usr/{bin,lib/python2.7/site-packages/scour}
  install -m 755 __init__.py* "${pkgdir}"/usr/lib/python2.7/site-packages/scour/
  install -m 644 svg_regex.py* yocto_css.py* svg_transform.py* "${pkgdir}"/usr/lib/python2.7/site-packages/scour/
  ln -s /usr/lib/python2.7/site-packages/scour/__init__.py "${pkgdir}"/usr/bin/scour
}

# vim: ts=2 sw=2 et:
