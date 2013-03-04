# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor : sebikul <sebikul@gmail.com>

pkgname=sqlheavy
pkgver=0.1.1
pkgrel=4
pkgdesc="A wrapper on top of SQLite with a GObject-based interface"
arch=('i686' 'x86_64')
url="https://code.google.com/p/sqlheavy/"
license=('LGPL')
conflicts=('sqlheavy-git')
depends=('gtk2' 'sqlite3')
makedepends=('vala')
options=('!libtool')
source=("https://sqlheavy.googlecode.com/files/${pkgname}-${pkgver}.tar.xz" 'query-memory-leak.patch' 'remove-utils.patch')
sha256sums=('e8689f5fd4e0baf98eada2b3811262bb99877c2e8586fd21ad2a7ad3acc59031'
            '38b365d89256c855b2dba671381f5c042de452d638b1be2ae7da693c38de77b5'
            'a454e493fa906729c9ad13dd0d9ffd31852d093b0d4325e745c7f3cb68a5d3db')

build() {
  cd "${srcdir}"/${pkgname}-${pkgver}

# Patch
  rm -rf utils
  patch -Np1 -i ${srcdir}/query-memory-leak.patch
  patch -Np1 -i ${srcdir}/remove-utils.patch

# Build
  ./configure --prefix=/usr
  make
}
package() {
  cd "${srcdir}"/${pkgname}-${pkgver}

# Install
  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
