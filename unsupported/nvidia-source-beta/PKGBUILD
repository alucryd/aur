# Maintainer : Alucryd <alucryd at gmail dot com>

pkgname=nvidia-source-beta
pkgver=313.26
pkgrel=2
pkgdesc="NVIDIA kernel module source (DKMS) - BETA version"
arch=('i686' 'x86_64')
[[ $CARCH == i686 ]] && _arch=x86 && _pkg=NVIDIA-Linux-${_arch}-${pkgver} && md5sums=('3c2f5138d0fec58b27e26c5b37d845b8')
[[ $CARCH == x86_64 ]] && _arch=x86_64 && _pkg=NVIDIA-Linux-${_arch}-${pkgver}-no-compat32 && md5sums=('2d35124fa5a4b009f170fe893b5d07e3')
url="http://www.nvidia.com/"
license=('custom')
depends=('linux>=3.7' 'linux<3.9' "nvidia-utils-beta=${pkgver}" 'dkms')
provides=("nvidia=${pkgver}" "nvidia-source=${pkgver}")
conflicts=('nvidia-beta' 'nvidia-source')
source=("http://us.download.nvidia.com/XFree86/Linux-${_arch}/${pkgver}/${_pkg}.run" 'linux-3.7.patch')
md5sums+=('ccb7806c4051bb802c049ba10d1e6f2a')
install=${pkgname}.install

build() {
  cd "${srcdir}"
  if [[ -d ${_pkg} ]] ; then
    rm -rf ${_pkg}
  fi
  sh ${_pkg}.run --extract-only
}

package() {
  cd "${srcdir}"/${_pkg}/kernel

# Patch
  patch -Np2 -i "${srcdir}"/linux-3.7.patch

# Install
  install -dm 755 "${pkgdir}"/usr/{src/nvidia-${pkgver},share/licenses}
  cp -dr --no-preserve=ownership * "${pkgdir}"/usr/src/nvidia-${pkgver}/
  ln -s /usr/share/licenses/nvidia "${pkgdir}"/usr/share/licenses/nvidia-source-beta

# Fix permissions
  chmod 644 "${pkgdir}"/usr/src/nvidia-${pkgver}/*
  chmod 755 "${pkgdir}"/usr/src/nvidia-${pkgver}/*.sh
}

# vim: ts=2 sw=2 et:
