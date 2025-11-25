class Lazyhis < Formula
  desc "simple terminal UI for shell history"
  homepage "https://github.com/nobbmaestro/lazyhis"
  url "https://github.com/nobbmaestro/lazyhis.git", :tag => "0.9.5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "install",
           "DST_DIR=#{bin}",
           "DST_MAN_DIR=#{man1}"
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
