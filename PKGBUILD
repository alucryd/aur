# Maintainer: Maxime Gauduin <alucryd@archlinux.org>
# Contributor: Jonathan Kotta <jpkotta@gmail.com>
# Contributor: paul2lv <paul2lv@gmail.com>
# Contributor: dtw <dibblethewrecker@gmail.com>

pkgname=foldingathome
pkgver=7.6.9
pkgrel=2
pkgdesc='A distributed computing project for simulating protein dynamics'
arch=(x86_64)
url=https://foldingathome.org/
license=(custom)
depends=(
  gcc-libs
  glibc
  zlib
)
optdepends=(
  'cuda: for folding with an NVIDIA GPU'
  'ocl-icd: for folding with any GPU'
  'opencl-amd: for folding with an AMD GPU (>= GCN)'
  'opencl-mesa: for folding with an AMD GPU (< GCN)'
  'opencl-nvidia: for folding with an NVIDIA GPU'
)
backup=(etc/foldingathome/config.xml)
install=foldingathome.install
source=(
  https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v${pkgver%.*}/fahclient_${pkgver}-64bit-release.tar.bz2
  foldingathome.service
  foldingathome-user.service
  GPUs.txt
)
sha256sums=('b580a8076f3147bacb9d1599e1b1765956a8e37b8a79bd961ffe2e3adc7df110'
            '03633db6db07d2d5f077e14caeec6398f2302d684374f2fe6394ab3edc2de995'
            '41997239dc363570e2ca5bec0eca8c7d88aada6ace0bb5793bf3ec6d101f40bb'
            '5944a6df06b42c5edd4e5f0922f16e3f04cb755bd248d0e610c9262f3814aff9')

package() {
  install -Dm 755 fahclient_${pkgver}-64bit-release/FAHClient -t "${pkgdir}"/usr/bin/
  install -Dm 755 fahclient_${pkgver}-64bit-release/FAHCoreWrapper -t "${pkgdir}"/usr/bin/
  install -Dm 644 fahclient_${pkgver}-64bit-release/CHANGELOG.md -t "${pkgdir}"/usr/share/doc/foldingathome/
  install -Dm 644 fahclient_${pkgver}-64bit-release/README.md -t "${pkgdir}"/usr/share/doc/foldingathome/
  install -Dm 644 fahclient_${pkgver}-64bit-release/copyright -t "${pkgdir}"/usr/share/licenses/foldingathome/
  install -Dm 644 fahclient_${pkgver}-64bit-release/sample-config.xml "${pkgdir}"/etc/foldingathome/config.xml
  install -Dm 644 foldingathome.service -t "${pkgdir}"/usr/lib/systemd/system/
  install -Dm 644 foldingathome-user.service "${pkgdir}"/usr/lib/systemd/user/foldingathome.service
  install -Dm 644 GPUs.txt -t "${pkgdir}"/etc/foldingathome/
}

# vim: ts=2 sw=2 et:
