# Demartini's Homebrew Tap

[Homebrew](https://brew.sh) tap for my macOS apps and command-line tools.

## Install

```bash
brew tap demartini/tap
brew trust demartini/tap
```

## Install Packages

```bash
# formula
brew install demartini/tap/<name>

# cask
brew install --cask demartini/tap/<name>
```

## Trusting this tap

Homebrew ignores formulae, casks, and commands from third-party taps until they are trusted (see `brew trust --help`).
Installing with the fully qualified name, as shown above, automatically trusts that formula or cask.

If you added the tap with `brew tap demartini/tap`, Homebrew warns that the tap is not trusted until at least one of its
formulae or casks is explicitly trusted.

Trust only the ones you need instead of the entire tap:

```bash
brew trust --formula demartini/tap/<name>
brew trust --cask demartini/tap/<name>
```

## Packages

### Formulae

_None yet._

### Casks

| Repository                                        | Cask                      | Description                                                    |
| ------------------------------------------------- | ------------------------- | -------------------------------------------------------------- |
| [openhere](https://github.com/demartini/openhere) | [Cask](Casks/openhere.rb) | Open the Finder location in the terminal or editor you choose. |

## Updating

```bash
brew update
brew upgrade <name>
```

## Uninstalling

```bash
brew uninstall <name>
brew uninstall --cask --zap <name>   # also removes preferences and caches
brew untap demartini/tap
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
