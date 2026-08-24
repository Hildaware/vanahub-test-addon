# VanaHub Test Addon

A minimal Ashita v4 addon used to exercise VanaHub catalog admission,
downloading, installation, and updates.

When loaded, it writes a single success message to the FFXI chat log.

## Package a release

```sh
make package VERSION=0.1.0
```

The release ZIP is written to `dist/` with the addon directory at its root.

## Publish a GitHub release

Run the **Create release** workflow from the repository's Actions tab and enter
a SemVer version without the `v` prefix. The requested version must match
`addon.version` in the Lua entrypoint. The workflow validates the ZIP layout,
creates the `v<version>` tag and release, and attaches the package and its
SHA-256 checksum.
