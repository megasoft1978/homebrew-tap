class Lcovmerge < Formula
  desc "Streaming LCOV merger; macOS binaries use the system libSystem library"
  homepage "https://github.com/megasoft1978/lcovmerge"
  version "1.0.1"
  license "MIT"

  on_arm do
    url "https://github.com/megasoft1978/lcovmerge/releases/download/v1.0.1/lcovmerge-1.0.1-macos-arm64.tar.gz"
    sha256 "30c3d62d70a7287459ef996c0c2af907fe3ed888692de30cafdf8bf43a257143"
  end

  on_intel do
    url "https://github.com/megasoft1978/lcovmerge/releases/download/v1.0.1/lcovmerge-1.0.1-macos-x86_64.tar.gz"
    sha256 "1c2fdf1c7f770c9cd2b7ca66c3ce79932f64e14db99812ed2482e0c9165e49d1"
  end

  def install
    bin.install "lcovmerge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lcovmerge --version")
  end
end
