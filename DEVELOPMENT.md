# Development

To create a new formula, run:

```sh
brew create [options] URL

# Please audit and test formula before submitting:
#   HOMEBREW_NO_INSTALL_FROM_API=1 brew audit --new [Formula name]
#   HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --debug [Formula name]
#   HOMEBREW_NO_INSTALL_FROM_API=1 brew test [Formula name]
```
