class Scitsifreine < Formula
  include Language::Python::Virtualenv

  desc "A small tool for using tmux for connecting to multiple remote servers via ssh."
  homepage ""
  url "https://github.com/flying7eleven/scitsifreine.git",
      tag:      "0.1.0",
      revision: "0772966dfea9dd99c1bad97df0d2c0bfad5d11c5"
  sha256 "a789d6e8775a6dcd244d6f4b6f1353c0085d98403f924f067a52051a5cecdff0"
  license "MIT"
  head "https://github.com/flying7eleven/scitsifreine.git", branch: "main"

  depends_on "python"

  resource "ansible" do
    url "https://files.pythonhosted.org/packages/eb/ab/e6993e1608fa911ee84dd0f29f494064f3b7f4a277f99608c9421a7a5ed4/ansible-9.1.0.tar.gz"
    sha256 "5ad94991fb0e0e53a770a9ffcf1b68047f61b2282d948a7d2682ecd8fb8fa1bf"
  end

  resource "pytest" do
    url "https://files.pythonhosted.org/packages/50/fd/af2d835eed57448960c4e7e9ab76ee42f24bcdd521e967191bc26fa2dece/pytest-8.0.0.tar.gz"
    sha256 "249b1b0864530ba251b7438274c4d251c58d868edaaec8762893ad4a0d71c36c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/scitsifreine", "--version"
  end
end
