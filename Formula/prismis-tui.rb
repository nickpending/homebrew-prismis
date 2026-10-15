class PrismisTui < Formula
  desc "Terminal UI for Prismis, the local-first content prioritization pipeline"
  homepage "https://github.com/nickpending/prismis"
  url "https://github.com/nickpending/prismis/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "e73a5fef63aff762823e061be68671e9d4bbc1928ac1e7b25f19dadfa15a5087"
  version "0.3.4"
  license "MIT"
  head "https://github.com/nickpending/prismis.git", branch: "main"

  depends_on "go" => :build

  def install
    cd "tui" do
      system "go", "build", *std_go_args(output: bin/"prismis"), "./cmd/prismis"
    end
  end

  def caveats
    <<~EOS
      The TUI talks to a Prismis daemon. To point it at a remote daemon, add
      a [remote] section with its url and key to ~/.config/prismis/config.toml:

        [remote]
        url = "https://your-daemon-host:8989"
        key = "your-api-key"

      Check the connection by running the CLI against the same config:

        prismis-cli list --limit 1

      Then launch the TUI with: prismis
    EOS
  end

  test do
    system bin/"prismis", "--help"
  end
end
