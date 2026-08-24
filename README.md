# VanaHub Test Addon

A minimal Ashita v4 addon used to exercise VanaHub catalog admission,
downloading, installation, and updates.

When loaded, it writes a single success message to the FFXI chat log.

## Package a release

```sh
make package VERSION=0.1.0
```

The release ZIP is written to `dist/` with the addon directory at its root.

