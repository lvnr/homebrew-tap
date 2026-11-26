class Matenadar < Formula
  desc "Book and page layout engine for people and agents"
  homepage "https://github.com/lvnr/matenadar"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lvnr/matenadar/releases/download/v0.2.0/matenadar-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "96adb26d44dfaa16590ef1ba22014015b36142f69e3c9e886a6ce7aac8de355f"
    end
    on_intel do
      url "https://github.com/lvnr/matenadar/releases/download/v0.2.0/matenadar-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f162f8befad9ac0c8bf392653ab0e49eb442c6f5cfe2b58289839480e330c4a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lvnr/matenadar/releases/download/v0.2.0/matenadar-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3ebe99bd6e89a31b16253e7eb43b1faea0107dfe59d7c3a7a0f3e23e9f2f577"
    end
    on_intel do
      url "https://github.com/lvnr/matenadar/releases/download/v0.2.0/matenadar-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72892eb4e6c7c6347a3ad39a7cbb177bef04f182401ca4521f26d9f75b4aca2f"
    end
  end

  def install
    bin.install "matenadar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/matenadar --version")
  end
end
