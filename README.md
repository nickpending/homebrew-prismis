# homebrew-prismis

Homebrew formulas for [prismis](https://github.com/nickpending/prismis), a local-first content pipeline.

Each component installs on its own. Trust the tap once (Homebrew refuses to load formulas from a third-party tap until you do), then install the ones the machine needs:

```bash
brew tap nickpending/prismis
brew trust nickpending/prismis   # unknown command? run `brew update` first
brew install nickpending/prismis/prismis-tui     # the terminal UI, for reading
brew install nickpending/prismis/prismis-cli     # the CLI, for agents and scripts
brew install nickpending/prismis/prismis-daemon  # the daemon, for the machine that fetches
```

Each formula prints its setup steps when it finishes; `brew info <formula>` shows them again.

The formulas are generated in the prismis repository under `packaging/homebrew/`. Change them there, not here.
