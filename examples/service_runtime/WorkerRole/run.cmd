REM Strip the trailing backslash (if present)
if %RUBY_PATH:~-1%==\ SET RUBY_PATH=%RUBY_PATH:~0,-1%

cd /d "%~dp0"

set PATH=%PATH%;%RUBY_PATH%\bin;%RUBY_PATH%\lib\ruby\gems\1.9.1\bin;

cd app

ruby -I"..\azure-ruby\lib" app.rb
