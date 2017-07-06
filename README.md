[![badge][apm]][package]
[![badge][chat]][#slack]

Modular Keymaps Black
===============
My robust modular keymap management system.

Any valid keymap (.json, .cson) file inside `.atom/keymaps/` will be loaded on activation and reloaded when modified. After adding new keymaps, you must reload atom to activate them.

This package does not interfere with the existing `keymap.cson`, so you can slowly transition to this more modular approach.

The Atom `Keymap…` menu item will be overridden to open your keymaps folder in a new window, along with the default `keymap.cson` if it still exists.

Install
-------
`apm install modular-keymaps-black` or search “keymaps” under packages within Atom.

License
-------
Copyright for portions of project modular-keymaps-black are held by [Daniel Bayley, 2016] as part of project Bar. All other copyright for project modular-keymaps-black are held by [Jarett Lee, 2017].

[MIT]:              LICENSE.md
[Jarett Lee]:       https://github.com/jarett-lee
[atom]:             https://atom.io
[apm]:              https://img.shields.io/apm/v/modular-keymaps-black.svg?style=flat-square
[package]:          https://atom.io/packages/modular-keymaps-black
[chat]:             https://img.shields.io/badge/chat-atom.io%20slack-ff69b4.svg?style=flat-square
[#slack]:           https://atom-slack.herokuapp.com

[fork from]:        https://atom.io/packages/modular-keymaps
