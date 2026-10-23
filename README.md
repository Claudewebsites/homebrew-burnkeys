<p align="center"><img src="https://burnkeys.com/icon.png" width="88" alt="Burnkeys"></p>

<h1 align="center">Burnkeys for the terminal</h1>

<p align="center">Find every API key in your projects, check each one with its provider, and swap in new keys everywhere they live. It never prints a secret.</p>

<p align="center"><a href="https://burnkeys.com">burnkeys.com</a> · <a href="https://burnkeys.com/download/Burnkeys.dmg">Mac app</a> · <a href="https://x.com/burnkeys_">@burnkeys_</a></p>

## Install

```sh
brew install claudewebsites/burnkeys/burnkeys
```

Needs [Homebrew](https://brew.sh). Works on macOS and Linux.

## Use

```sh
burnkeys scan ~/code       # every key in every .env file, by provider
burnkeys verify ~/code     # ask each provider: does this key still work?
burnkeys replace fp:1a2b3c4d   # copy a new key on the provider's site; it's written everywhere the old one was
burnkeys push fp:1a2b3c4d      # update the same variable on Vercel and redeploy
burnkeys mcp               # let Cursor, Codex or Claude Desktop ask about your keys (statuses only)
```

Keys are shown as short fingerprints (`fp:…`). Values never appear, and they never leave your machine: each key goes only to its own provider, to ask whether it works.

## The Mac app

Everything above in one window, plus breach alerts, leak checks in git history, multi-part keys (X, PayPal, R2, Apple .p8, Firebase JSON) and background checks with Pro. [Download for Mac](https://burnkeys.com/download/Burnkeys.dmg).

---

© 2026 SSTA Digital Industry Ltd. [Terms](https://burnkeys.com/terms/) · [Privacy](https://burnkeys.com/privacy/) · hello@burnkeys.com
