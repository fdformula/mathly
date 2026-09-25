## [Lite XL](https://github.com/lite-xl/lite-xl) is a very good "IDE" for MathLua

It is even smaller and faster than [CudaText](https://github.com/fdformula/mathly/tree/main/IDE%20-%20CudaText). You can download here the customized
versions for Windows, Linux, and MacOS. While in Lite XL, press
```
  F1               to open help on current Lua/MathLua function
  F2               to start MathLua or an associated interpreter in the folder of the current file

  Ctrl-,           to run the selected code or the current line in the editor (or Shift-Enter)
  Ctrl-.           to run all code in the editor (or Ctrl-Enter. HTML file? open it in a browser)

  Ctrl-t           to insert template for plot(...)

  Ctrl-Shift-c     to copy selection (in terminal)
  Ctrl-Shift-v     to paste (in terminal)
```
`F2`, `Ctrl-,`, and `Ctrl-.` work with Bash, Julia, Octave, Python, R, Ruby, and some other languages with interactive REPL terminals.
Lite XL detects and selects the very language according to the extension of the present filename (defaults to Lua). See: The first few
lines of the file, `lite-xl/data/plugins/language_lua_mathlua.lua`.

Other hotkeys? See `lite-xl/lite_xl-hotkeys-for-lua-mathlua.txt`.

Only one interpreter is allowed at a time. To change an interpreter, you may enter the interpreter terminal, and press ctrl-c or execute
commands like `os.exit()`, `exit`, `quit`, `exit()`, etc., to exit the present interpreter. Then, go to the very file in the editor and
press F2 to start the associated interpreter.

&rArr; Microsoft Windows users may download on this very page the file, `lite-xl-*-for-mathlua-win.zip`. It includes the text editor, Lite XL, with Lua 5.5.0 and
MathLua included and integrated. Unzip it to C:\ (the root directory of the C drive). <em>Do not change the name of the folder,
`C:\mathlua`</em>.

&rArr; Linux users may download the file, `lite-xl-2.1.8-for-mathlua-linux.tar.gz`. Run `tar xfz lite-xl-2.1.8-for-mathlua-linux.tar.gz` and refer to the included file,
`lite-xl-2.1.8-for-mathlua-linux/note.txt`, for further steps.

&rArr; MacOS users may download the file, `lite-xl-2.1.8-for-mathlua-macos_intel.tar.gz`, if your Mac is Intel-based. Run
```bash
tar xfz lite-xl-2.1.8-for-mathlua-macos_intel.tar.gz
```
and refer to the included file, `lite-xl-2.1.8-for-mathlua-macos_intel/note.txt`, for further steps. If your Mac is newer and uses M-series chips, you still need the file.
You will first download [Lite XL](https://github.com/lite-xl/lite-xl) and install it. You will also need to install Lite XL Plugin Manager (`lpm`) and `lite-xl-terminal`
as follows:

```bash
wget --no-check-certificate https://github.com/lite-xl/lite-xl-plugin-manager/releases/download/latest/lpm.`uname -m | sed 's/arm64/aarch64/'`-`uname | tr '[:upper:]' '[:lower:]'` -O lpm && chmod +x lpm
./lpm install terminal
```
Then, run
```bash
rm -fr lite-xl-2.1.8-for-mathlua-macos_intel/Applications/Lite\ XL.app/Contents/MacOS/
cp -R lite-xl-2.1.8-for-mathlua-macos_intel/usr/* /usr/
cp -R lite-xl-2.1.8-for-mathlua-macos_intel/Applications/* /Applications/
rm /Applications/Lite\ XL.app/Contents/Resources/terminal/*
cp -R ~/.config/lite-xl/plugins/terminal/* /Applications/Lite\ XL.app/Contents/Resources/terminal/
cp lite-xl-2.1.8-for-mathlua-macos_intel/Applications/Lite\ XL.app/Contents/Resources/terminal/init.lua /Applications/Lite\ XL.app/Contents/Resources/terminal/
rm -fr ~/.config/lite-xl/
```
`Note`: [CudaText](https://github.com/fdformula/mathly/tree/main/IDE%20-%20CudaText) is another very good "IDE" for MathLua.
