# tufte-pandoc-jekyll

This is a Jekyll theme for using Tufte CSS alongside `pandoc-sidenote`. It's
based off of

- [Tufte CSS] for the original CSS file
- [Tufte Pandoc CSS] uses Markdown in conjunction with Tufte CSS

[Tufte CSS]: https://edwardtufte.github.io/tufte-css/
[Tufte Pandoc CSS]: https://jez.io/tufte-pandoc-css/

You may ask, "What's the difference between this and `tufte-jekyll`?"

Using `pandoc-sidenote`, we don't have to use `{% sidenote %}...{% sidenote %}`
and can instead just use `[^1]` like normal Pandoc markdown.

For a demo, see <https://jez.io/talks/>.

## Installation

There are two external dependencies in order to use this theme. You can install
them through your package manager (like `apt-get` or `brew`):

```
# EXAMPLE: This is for macOS. Change if you're on Linux.
# Note: you must have pandoc version 2.0 or greater
brew install pandoc
brew install jez/formulae/pandoc-sidenote
```

Next, add this line to your Jekyll site's Gemfile:

```ruby
gem "tufte-pandoc-jekyll"
```

And add these lines to your Jekyll site's `_config.yml`:

```yaml
theme: tufte-pandoc-jekyll

gems:
  - jekyll-pandoc
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tufte-pandoc-jekyll


## Usage

> Note: while `tufte-pandoc-css` optionally includes the Solarized Light
> colorscheme, it's enabled by default here, with no easy way to opt-out. This is
> probably fine for you, but if it's not, feel free to make a PR that allows
> opting out.

### Variables

The following variables are used by this theme.

- `site.title`
- `site.author`
  - Note that this theme currently only supports one author.
- `site.baseurl`
  - Make sure you don't have a trailing slash here
- `site.header_includes`
- `page.header_includes`
  - You can use these to include raw HTML in the `<head>`
- `site.include_after`
- `page.include_after`
  - You can use these to include raw HTML in the `<body>` before the content
- `site.include_before`
- `page.include_before`
  - You can use these to include raw HTML in the `<body>` after the content
- `page.layout`
  - Pick one of `index`, `page`, or `post`
  - `index` won't have a "Return home" link at the bottom of the page
- `page.title`
- `page.subtitle`
- `page.date`
- `page.keywords`
- `page.math`
  - If `true`, we'll include KaTeX for displaying math formulas

### `_config.yml`

You'll need to update your `_config.yml` to compile the site using Pandoc. Make
sure you've followed the installation instructions.

```
gems:
  - jekyll-pandoc

markdown: Pandoc
pandoc:
  extensions:
    - section-divs
    - from: 'markdown+tex_math_single_backslash'
    - filter: 'pandoc-sidenote'
```

Optional: remove `section-divs` if you want to insert `<section>` tags manually.

## Developing

To make a release:

```bash
vim tufte-pandoc-jekyll.gemspec
git commit tufte-pandoc-jekyll.gemspec -m 'Bump version'
git tag "$version"
git push --tags origin master
gem build tufte-pandoc-jekyll.gemspec
gem push "tufte-pandoc-jekyll-$version.gem"
```


## License

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://jez.io/MIT-LICENSE.txt)
