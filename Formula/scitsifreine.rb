class Scitsifreine < Formula
  include Language::Python::Virtualenv

  desc "A small tool for using tmux for connecting to multiple remote servers via ssh."
  homepage ""
  url "https://github.com/flying7eleven/scitsifreine/archive/refs/tags/0.1.0.tar.gz"
  sha256 "a789d6e8775a6dcd244d6f4b6f1353c0085d98403f924f067a52051a5cecdff0"
  license "MIT"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/scitsifreine", "--version"
  end
end