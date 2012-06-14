REM Skip DevKit install if we're running under the emulator
if "%EMULATED%"=="true" exit /b 0

REM Strip the trailing backslash (if present)
if %RUBY_PATH:~-1%==\ SET RUBY_PATH=%RUBY_PATH:~0,-1%

cd /d "%~dp0"

REM Download directly from rubyinstaller.org
powershell -c "(new-object System.Net.WebClient).DownloadFile('http://github.com/downloads/oneclick/rubyinstaller/DevKit-tdm-32-4.5.2-20110712-1620-sfx.exe', 'devkit.exe')"

REM Install DevKit
devkit.exe -y -gm2 -o"%RUBY_PATH%\devkit"

set PATH=%PATH%;%RUBY_PATH%\bin

cd /d "%RUBY_PATH%\devkit"
ruby dk.rb init
ruby dk.rb install