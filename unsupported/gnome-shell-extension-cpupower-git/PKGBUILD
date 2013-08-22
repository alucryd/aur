# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=gnome-shell-extension-cpupower-git
pkgver=5
pkgrel=1
pkgdesc="Add a button on the panel to switch between governors with cpupower"
arch=('any')
url="https://github.com/Alucryd/gnome-shell-extension-cpupower"
license=('GPL2')
depends=('cpupower' 'gnome-shell' 'polkit')
makedepends=('git')
source=("${pkgname%-*}::git+https://github.com/alucryd/gnome-shell-extension-cpupower.git")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  git rev-list --count HEAD
}

package() {
  cd ${pkgname%-*}

  mkdir -p "${pkgdir}"/usr/share/gnome-shell/extensions
  cp -dr --no-preserve=ownership cpupower@Alucryd.github.com "${pkgdir}"/usr/share/gnome-shell/extensions/

# Fix permissions
  find "${pkgdir}" -type d -exec chmod 755 {} +
  find "${pkgdir}" -type f -exec chmod 644 {} +
}

# vim: ts=2 sw=2 et:
