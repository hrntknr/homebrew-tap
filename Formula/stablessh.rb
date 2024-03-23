class Stablessh < Formula
  desc "Keeps SSH on even when laptop is closed"
  homepage "https://github.com/hrntknr/stablessh"
  url "https://github.com/hrntknr/stablessh/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "df6393edf6908a707435bd413d67367e71098e3f7df722c50939330ce7e65c44"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
