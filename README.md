# A set of useful git hooks

These hooks automate some tasks with the help of git.

## Documentation

Read [the original documentation][extern-doc] to learn more about it.

### TL;DR

Get templates:

```sh
git clone https://github.com/rickywongwk/.githooks ~/.githooks
```

Implant scripts:

```sh
git config init.templatedir '~/.githooks/template'
~/.githooks/update.sh
```

Enable hooks (interactive):

```sh
$(git rev-parse --git-dir)/configure.sh
```

OR (manually):

```sh
git config hooks.enabled-plugins php/composer
git config --add hooks.enabled-plugins php/ctags
git config --add hooks.enabled-plugins junkchecker
```

## Credits

Forked from [here][forked-url]

## Build Status

[![Build Status][build-img]][build-url]

[extern-doc]: http://git-template.readthedocs.io
[forked-url]: https://github.com/greg0ire/git_template
[build-img]: https://travis-ci.org/rickywongwk/.githooks.svg?branch=master
[build-url]: https://travis-ci.org/rickywongwk/.githooks
