source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!

gem "github-pages", group: :jekyll_plugins

# Ruby 3.4+/4.x no longer ships these as default gems, but the pinned old
# Jekyll 3.9.0 (from github-pages) still assumes they're available.
gem "csv"
gem "webrick"
gem "base64"
gem "logger"
gem "ostruct"
gem "bigdecimal"
gem "mutex_m"
gem "rexml"

# If you want to use Jekyll native, uncomment the line below.
# To upgrade, run `bundle update`.

# gem "jekyll"

gem "wdm", "~> 0.1.0" if Gem.win_platform?

# If you have any plugins, put them here!
group :jekyll_plugins do
  # gem "jekyll-archives"
  gem "jekyll-feed"
  gem 'jekyll-sitemap'
  # gem 'hawkins' # live-reload; disabled locally, needs eventmachine which
                   # fails to compile on this machine's Xcode CLT (missing
                   # <iostream>). Re-enable once Xcode CLT is reinstalled.
end
