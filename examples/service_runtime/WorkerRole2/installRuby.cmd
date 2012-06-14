REM Skip Ruby install if we're running under the emulator
if "%EMULATED%"=="true" exit /b 0

REM Strip the trailing backslash (if present)
if %RUBY_PATH:~-1%==\ SET RUBY_PATH=%RUBY_PATH:~0,-1%

cd /d "%~dp0"

REM Download directly from rubyinstaller.org
powershell -c "(new-object System.Net.WebClient).DownloadFile('http://rubyforge.org/frs/download.php/75465/rubyinstaller-1.9.3-p0.exe', 'ruby.exe')"

REM Install Ruby and DevKit
start /w ruby.exe /verysilent /dir="%RUBY_PATH%"

REM Ensure permissive ACLs so other users (like the one that's about to run Ruby) can use everything.
icacls "%RUBY_PATH%" /grant everyone:f
icacls . /grant everyone:f

REM Make sure Ruby was installed properly (will produce a non-zero exit code if not)
"%RUBY_PATH%\bin\ruby" --version