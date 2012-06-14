REM Strip the trailing backslash (if present)
if %RUBY_PATH:~-1%==\ SET RUBY_PATH=%RUBY_PATH:~0,-1%

cd /d "%~dp0"

set PATH=%PATH%;%RUBY_PATH%\bin

cd app

REM Install bundler, which will install other gems
call gem install bundler --no-ri --no-rdoc

REM Install gems from Gemfile.
call bundle install