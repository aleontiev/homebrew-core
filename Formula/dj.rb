class Dj < Formula
  desc "dj, the Django CLI"
  version "0.0.5"
  homepage "https://github.com/aleontiev/dj"
  url "https://github.com/aleontiev/dj/releases/download/v0.0.5/dj-0.0.5.tar.gz"
  sha256 "cf3c3ab176383732c205d04b61f9dfb8bcb57f15785490a75ae6a63f37ec5f92"

  def install
    libexec.install Dir["dj.exe/{.[^\.]*,*}"]
    bin.install_symlink libexec/"dj.exe"
    mv bin/"dj.exe", bin/"dj"
  end

  test do
    system bin/"dj", "--help"
  end
end
