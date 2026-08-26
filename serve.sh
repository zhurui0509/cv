#!/bin/bash
# Local dev server for the personal-website Jekyll site.
# Uses the Homebrew Ruby (not the old system Ruby) and a project-local
# gem path, plus a CPLUS_INCLUDE_PATH workaround for this machine's
# incomplete Xcode Command Line Tools C++ headers (see Gemfile comment).
cd "$(dirname "$0")"
export PATH="/opt/homebrew/opt/ruby/bin:$HOME/.gem-personal-website/bin:$PATH"
export GEM_HOME="$HOME/.gem-personal-website"
export CPLUS_INCLUDE_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1"
export RUBYOPT="-r$(pwd)/dev/taint_shim.rb"
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 --config _config.yml
