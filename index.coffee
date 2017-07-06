{CompositeDisposable} = require 'atom'
subs = new CompositeDisposable
fs = require 'fs'
{sep, resolve} = require 'path'
{exec} = require 'child_process'

keymaps = resolve atom.configDirPath, 'keymaps' # folder

#-------------------------------------------------------------------------------
activate = ->
  fs.mkdirSync keymaps if !fs.existsSync keymaps
  loadAllKeymaps keymaps
  addOpenCommand()

#-------------------------------------------------------------------------------
loadAllKeymaps = (rootPath) ->
  fs.readdir rootPath, (err, pathNames) ->
    throw err if err

    fullPaths = pathNames.map (name) -> resolve rootPath, name

    fullPaths
      .filter validDir
      .map (dir) -> loadAllKeymaps dir

    fullPaths
      .filter valid
      .map loadKeymap

validDir = (fullPath) ->
  stats = fs.statSync fullPath
  gitDir = ///.*\.git$///.test fullPath
  return stats.isDirectory() and not gitDir

valid = (file) ->
  tempkeymaps = "#{keymaps}#{sep}"
  tempkeymaps = tempkeymaps.split('\\').join('\\\\') if sep is '\\'
  ///#{tempkeymaps}.*\.[cj]son$///.test file

loadKeymap = (keymap) ->
  try
    options =
      watch: true
    atom.keymaps.loadKeymap keymap, options
  catch error
    displayError keymap, error
    atom.keymaps.watchKeymap keymap

displayError = (keymap, error) ->
  tempOptions =
    dismissable: true
    detail: error.stack
  atom.notifications.addError "Failed to load `#{keymap}`", tempOptions

#-------------------------------------------------------------------------------
addOpenCommand = () ->
  subs.add atom.commands.add 'atom-workspace',
    'modular-keymaps:open': ->
      open [ keymaps, resolve atom.configDirPath, keymap.cson ]

open = (keymaps) -> atom.open pathsToOpen: keymaps #, newWindow: true

#-------------------------------------------------------------------------------
deactivate = ->
  subs.dispose()

#-------------------------------------------------------------------------------
module.exports = {activate, deactivate}
