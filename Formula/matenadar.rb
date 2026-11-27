class Matenadar < Formula
  desc "Typesetting engine for anything that prints, for people and agents"
  homepage "https://github.com/lvnr/matenadar"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lvnr/matenadar/releases/download/v0.3.0/matenadar-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9db6880e23fabd7bc449a2cc5513e7a627cb40322e842ed65c5b10171a154432"
    end
    on_intel do
      url "https://github.com/lvnr/matenadar/releases/download/v0.3.0/matenadar-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "06a5fca105c442970e6458bf3961624f622ba4c209196d6ec9594a2ab297c305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lvnr/matenadar/releases/download/v0.3.0/matenadar-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f76fc659bdf3784457c81dba6de3f1b67ae8a30db1657dfab80113ca26fe51de"
    end
    on_intel do
      url "https://github.com/lvnr/matenadar/releases/download/v0.3.0/matenadar-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbdb33c70c4263000f8dffad39ac0f1d3d6b26c8130633160728b7cc83d64f62"
    end
  end

  def install
    bin.install "matenadar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/matenadar --version")
  end
end
