A script for quick swap of steam accounts

# Usage
Set your username(s) in the "set username" field in the script.
## Optional: You can rename the data folder so Steam doesn't try to redownload the entire game every time, like this:
for /d %%D in ("D:\Games\Launchers\Steam\steamapps\common\game\LocalData\*") do ren "%%D" "[string]" where [string] corresponds to the other accounts data folder.