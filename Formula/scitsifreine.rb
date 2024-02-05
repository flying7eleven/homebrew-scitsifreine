class Scitsifreine < Formula
  include Language::Python::Virtualenv

  desc "A small tool for using tmux for connecting to multiple remote servers via ssh."
  homepage ""
  url "https://github.com/flying7eleven/scitsifreine.git",
      tag:      "0.1.1",
      revision: "70772532023c68896bf861a7280f67f45248f52e"
  sha256 "a789d6e8775a6dcd244d6f4b6f1353c0085d98403f924f067a52051a5cecdff0"
  license "MIT"
  head "https://github.com/flying7eleven/scitsifreine.git", branch: "main"

  depends_on "python"
  depends_on "rust" => :build

  resource "ansible" do
    url "https://files.pythonhosted.org/packages/eb/ab/e6993e1608fa911ee84dd0f29f494064f3b7f4a277f99608c9421a7a5ed4/ansible-9.1.0.tar.gz"
    sha256 "5ad94991fb0e0e53a770a9ffcf1b68047f61b2282d948a7d2682ecd8fb8fa1bf"
  end

  resource "ansible-core" do
    url "https://files.pythonhosted.org/packages/00/b9/7d2229459038cdfe84b6e4db76f97acae35cb46917a0d9a7e61d3e300637/ansible-core-2.16.3.tar.gz"
    sha256 "76a8765a8586064ef073a299562e308fa2c180a75b5f7569bbd0f61d4171cdb3"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/68/ce/95b0bae7968c65473e1298efb042e10cafc7bafc14d9e4f154008241c91d/cffi-1.16.0.tar.gz"
    sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/0f/6f/40f1b5c6bafc809dd21a9e577458ecc1d8062a7e10148d140f402b535eaa/cryptography-42.0.2.tar.gz"
    sha256 "e0ec52ba3c7f1b7d813cd52649a5b3ef1fc0d433219dc8c93827c57eab6cf888"
  end

  resource "iniconfig" do
    url "https://files.pythonhosted.org/packages/d7/4b/cbd8e699e64a6f16ca3a8220661b5f83792b3017d0f79807cb8708d33913/iniconfig-2.0.0.tar.gz"
    sha256 "2d91e135bf72d31a410b17c16da610a82cb55f6b0477d1a902134b24a455b8b3"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/b2/5e/3a21abf3cd467d7876045335e681d276ac32492febe6d98ad89562d1a7e1/Jinja2-3.1.3.tar.gz"
    sha256 "ac8bd6544d4bb2c9792bf3a159e80bba8fda7f07e81bc3aed565432d5925ba90"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
    sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
    sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/54/c6/43f9d44d92aed815e781ca25ba8c174257e27253a94630d21be8725a2b59/pluggy-1.4.0.tar.gz"
    sha256 "8c85c2876142a764e5b7548e7d9a0e0ddb46f5185161049a79b7e974454223be"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
  end

  resource "pytest" do
    url "https://files.pythonhosted.org/packages/50/fd/af2d835eed57448960c4e7e9ab76ee42f24bcdd521e967191bc26fa2dece/pytest-8.0.0.tar.gz"
    sha256 "249b1b0864530ba251b7438274c4d251c58d868edaaec8762893ad4a0d71c36c"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "resolvelib" do
    url "https://files.pythonhosted.org/packages/ce/10/f699366ce577423cbc3df3280063099054c23df70856465080798c6ebad6/resolvelib-1.0.1.tar.gz"
    sha256 "04ce76cbd63fded2078ce224785da6ecd42b9564b1390793f64ddecbe997b309"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match /^scitsi \d\.\d\.\d.*/, shell_output("#{bin}/scitsifreine --version")
  end
end
