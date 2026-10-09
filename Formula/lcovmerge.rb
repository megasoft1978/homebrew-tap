class Lcovmerge < Formula
  desc "Streaming LCOV merger; macOS binaries use the system libSystem library"
  homepage "https://github.com/megasoft1978/lcovmerge"
  version "1.0.0"
  license "MIT"

  on_arm do
    url "https://github.com/megasoft1978/lcovmerge/releases/download/v1.0.0/lcovmerge-1.0.0-macos-arm64.tar.gz"
    sha256 "464788972e073baa600899f3205b5b8c64cc999ae98bb61b6101f691c3c7c54d"
  end

  on_intel do
    url "https://github.com/megasoft1978/lcovmerge/releases/download/v1.0.0/lcovmerge-1.0.0-macos-x86_64.tar.gz"
    sha256 "81583a6b38748864214911df63f79799874145a55eba0c3154d65eddb322671e"
  end

  def install
    bin.install "lcovmerge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lcovmerge --version")
  end
end
