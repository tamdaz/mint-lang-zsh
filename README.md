# mint-lang-zsh
**mint-lang-zsh** is a Zsh plugin that provides arguments and options completions for `mint` command.

## Requirements
- [Zsh](https://github.com/zsh-users/zsh)
- [Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [Zsh](https://github.com/zsh-users/zsh)
- [Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh)

## Installation

To use mint-lang-zsh as plugin, clone it and install it into OMZ plugins directory.
```sh
git clone --depth=1 https://github.com/tamdaz/mint-lang-zsh ~/.oh-my-zsh/custom/plugins/mint-lang
```

Once installed, add it to the plugin list in ~/.zshrc : 
```sh
-plugins=(...)
+plugins=(... mint-lang)
```

And refresh the source :
```sh
source ~/.zshrc
```

## Uninstall

To uninstall mint-lang-zsh, delete mint-lang from the plugin.
```sh
rm -rf ~/.oh-my-zsh/custom/plugins/mint-lang
```

And remove it from the plugin list : 
```sh
-plugins=(... mint-lang)
+plugins=(... mint-lang)
```

## Contributors
Any contributions are welcome !

- [tamdaz](https://github.com/tamdaz) - Creator and maintainer