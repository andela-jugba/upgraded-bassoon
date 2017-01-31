#!/bin/sh
gem install bump
github_changelog_generator
git add CHANGELOG.md
bump "$1" --tag --no-bundle
git push && git push --tags
