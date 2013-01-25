# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=python2-slip
pkgver=0.2.24
pkgrel=2
pkgdesc="Simple Library for Python"
arch=('any')
url="http://fedorahosted.org/python-slip"
license=('GPL2')
depends=('python2-dbus' 'python2-gobject' 'python2-decorator' 'gtk2' 'pygtk' 'polkit')
source=("http://fedorahosted.org/released/python-slip/python-slip-${pkgver}.tar.bz2")
sha256sums=('ffd4c1beca05b0af9f30923e9304c97e714e2c7e535ff4ccee0486d2d7e7e08b')

build() {
  cd "${srcdir}"/python-slip-${pkgver}

# Python 2 fix
  sed -i 's|python|python2|g' {py_rules.mk,setup.py.in}

  make
}

package() {
  cd "${srcdir}"/python-slip-${pkgver}

  make DESTDIR="${pkgdir}" install

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
