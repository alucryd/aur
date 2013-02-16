# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor: unikum <unikum dot pm at gmail.com>
# Contributor: speed145a <jonathan at tagchapter dot com>

pkgname=firewalld
pkgver=0.2.12
pkgrel=3
pkgdesc="Firewall service daemon that provides a dynamic customizable firewall with a D-BUS interface"
arch=('any')
url="http://fedorahosted.org/firewalld"
license=('GPL2')
depends=('dconf' 'iptables' 'ebtables' 'gtk2' 'hicolor-icon-theme' 'python2-slip')
makedepends=('gettext' 'intltool')
conflicts=('firewalld-git')
install=${pkgname}.install
source=("http://fedorahosted.org/released/$pkgname/$pkgname-$pkgver.tar.bz2" 'default-zone.patch')
sha256sums=('02da3b1660ba87056615f64714dcdcc13694e953d07fb415b1b23d57d94b3071'
            'ba1dd3b6c43c934cd015754d672a45eb28cd176e9e91a7d64a124d0544e2078b')

build() {
  cd "${srcdir}"/${pkgname}-${pkgver}

# Default zone fix
  patch -Np1 -i "${srcdir}"/default-zone.patch

# Python 2 fix
  export PYTHON=python2
  sed -i 's|#!/usr/bin/python|#!/usr/bin/python2|' $(grep -rl '#!/usr/bin/python' "${srcdir}")
  sed -i 's|python|python2|g' fix_python_shebang.sh

# Build
  ./autogen.sh --prefix=/usr --sysconfdir=/etc --disable-schemas-compile
  make
}

package() {
  cd "${srcdir}"/${pkgname}-${pkgver}
  make DESTDIR="${pkgdir}" install

# Fix paths
  mv "${pkgdir}"/etc/sysconfig "${pkgdir}"/etc/conf.d
  sed -i 's|sysconfig|conf.d|g' "${pkgdir}"/usr/lib/systemd/system/firewalld.service
  sed -i 's|/sbin|/usr/sbin|g' "${pkgdir}"/usr/lib/python2.7/site-packages/firewall/core/{ipXtables,ebtables}.py

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
  chmod -R 755 "${pkgdir}"/usr/{bin,sbin}
}

# vim: ts=2 sw=2 et:
