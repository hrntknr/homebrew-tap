class Stablessh < Formula
  desc "Keeps SSH on even when laptop is closed"
  homepage "https://github.com/hrntknr/stablessh"
  url "https://github.com/hrntknr/stablessh/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ef42ea5483a0ec60eb67a41f012628e1dcabde1401834bbb6fbacfe5942a8833"
  license "MIT"

  depends_on "rust" => :build
  depends_on "protobuf" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
