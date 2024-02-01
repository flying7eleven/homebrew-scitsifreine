[![Build Status](https://img.shields.io/github/actions/workflow/status/hekmekk/homebrew-git-team/verify-published-formula.yaml?branch=master&logo=github&style=for-the-badge)](https://github.com/hekmekk/homebrew-git-team/actions)

# homebrew-scitsifreine

Homebrew formula for [scitsifreine](https://github.com/flying7eleven/scitsifreine)

## Installation

1. Add tap
```bash
brew tap flying7eleven/scitsifreine
```

2. Install scitsifreine

Install stable release.
```bash
brew install scitsifreine
```

## Development
```bash
docker run --rm -i -t --user linuxbrew \
	-v `pwd`/Formula:/scitsifreine-formula:ro \
	linuxbrew/brew:3.2.5 \
	/bin/sh -c "brew install --verbose /scitsifreine-formula/scitsifreine.rb"
```

## Contribution
The workflows and the Homebrew tap are forked from [git-team](https://github.com/hekmekk/homebrew-git-team).