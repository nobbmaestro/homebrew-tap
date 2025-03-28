class Lazyhis < Formula
  desc "simple terminal UI for shell history"
  homepage "https://github.com/nobbmaestro/lazyhis"
  url "https://github.com/nobbmaestro/lazyhis.git", :tag => "0.3.2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "build/lazyhis"
  end

  test do
    system "#{bin}/lazyhis", "--version"
  end

  def caveats
    <<~EOS
    To start using lazyhis, add the following to your ~/.zshrc:

      eval "$(lazyhis init zsh)"

    EOS
  end
end
