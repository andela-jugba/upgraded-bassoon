#!/bin/sh
gem install bump
github_changelog_generator --since-tag v0.3.23 --max-issues 
git add CHANGELOG.md
bump "$1" --no-bundle
git commit --amend -m "Bump Version to: v$(<VERSION) and Update CHANGELOG."
git tag "v$(<VERSION)"
git push && git push --tags
