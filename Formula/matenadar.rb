class Matenadar < Formula
  desc "Book and page layout engine for people and agents"
  homepage "https://github.com/lvnr/matenadar"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lvnr/matenadar/releases/download/v0.1.0/matenadar-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "199061647d2435ee8fcfe44fd5fc0f96f76b9572371d1e3cc895cd9246aa8b5d"
    end
    on_intel do
      url "https://github.com/lvnr/matenadar/releases/download/v0.1.0/matenadar-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "85558e0fc540b0cd7632610d4e8642ad4d6232ded5c14e36180458453c01e126"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lvnr/matenadar/releases/download/v0.1.0/matenadar-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75b656ba25c0fbb293603b689137f5b49ac8dbe0a586ced7b6611abed5ac18f8"
    end
    on_intel do
      url "https://github.com/lvnr/matenadar/releases/download/v0.1.0/matenadar-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98aeedbde3fc41ed43b8386a13e408aee32d19f063748ee97a92abe782b26781"
    end
  end

  def install
    bin.install "matenadar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/matenadar --version")
  end
end
