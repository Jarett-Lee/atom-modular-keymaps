[![badge][apm]][package]
[![badge][chat]][#slack]

Modular Keymaps
===============
A modular solution to [Atom] keymaps.

Any valid keymap (.json, .cson) file inside [`ATOM_HOME`]`/keymaps/` will be loaded on activation and reloaded when modified. After adding new keymaps, you must reload atom to activate them.

This package does not interfere with the existing `keymap.cson`, so you can slowly transition to this more modular approach.

The Atom `Keymap…` menu item will be overridden to open your keymaps folder in a new window, along with the default `keymap.cson` if it still exists.

Install
-------
`apm install modular-keymaps` or search “keymaps” under packages within Atom.

License
-------
[MIT] © [Daniel Bayley]

[MIT]:              LICENSE.md
[Daniel Bayley]:    https://github.com/danielbayley
[atom]:             https://atom.io
[apm]:              https://img.shields.io/apm/v/modular-keymaps.svg?style=flat-square
[package]:          https://atom.io/packages/modular-keymaps
[chat]:             https://img.shields.io/badge/chat-atom.io%20slack-ff69b4.svg?style=flat-square
[#slack]:           https://atom-slack.herokuapp.com

[`ATOM_HOME`]:      http://flight-manual.atom.io/using-atom/sections/basic-customization/#custom-home-location-with-an-environment-variable
[sync-settings]:    https://atom.io/packages/sync-settings
