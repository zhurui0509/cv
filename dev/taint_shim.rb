# Local-dev-only compatibility shim, loaded via `RUBYOPT=-r./dev/taint_shim.rb`
# in serve.sh (NOT a Jekyll _plugins/ file: the `github-pages` gem forces
# `safe: true` and randomizes the plugins directory to emulate GitHub's real
# build sandbox, so _plugins/ never loads under it — this has to run at the
# Ruby interpreter level, before Jekyll/github-pages even boots).
#
# The `github-pages` gem pins Jekyll 3.9.0 / Liquid 4.0.3 for parity with
# GitHub's own build. Liquid 4.0.3 calls the long-removed Object#tainted?
# API on every variable render; Ruby 3.2+ dropped that API entirely, which
# breaks `jekyll serve` on a modern local Ruby. GitHub Pages builds with an
# older Ruby where this still exists, so this shim is purely local.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
