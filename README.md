# Rinux

My own custom Linux-based operating system, built from source (inspired by Linux From Scratch).

## Philosophy

This repository tracks the **build system**, **configurations**, **patches**, and **package definitions** for Rinux — not the full upstream source trees.

### Why not the full kernel / package sources?
- The Linux kernel source is ~5 GB with history (or ~1+ GB shallow).
- Putting large tarballs in Git makes the repo slow to clone and hard to manage.
- Instead: list versions + download URLs, apply your patches, and build.

## Recommended Approach

1. Follow [Linux From Scratch (LFS)](https://www.linuxfromscratch.org/) (or Beyond LFS) to understand the process.
2. Use this repo to version-control:
   - Build scripts
   - Kernel `.config`
   - Custom patches
   - Package version pins and build options
   - System configuration files (`/etc`, init scripts, etc.)
3. Download upstream sources during the build (or use a lookaside cache).

## Directory Structure

```
Rinux/
├── README.md
├── .gitignore
├── docs/                 # Build notes, troubleshooting, design decisions
├── scripts/              # Build and update scripts
│   ├── update.sh         # Pull updates and rebuild
│   └── ...
├── configs/              # Kernel config, package configs, system files
│   └── kernel.config
├── patches/              # Custom patches for kernel and packages
├── packages/             # Package definitions (versions, build flags, deps)
└── sources/              # (gitignored) Downloaded tarballs / git checkouts
```

## Pulling Updates on the Running System

Once your system is bootable and has `git` installed:

```bash
cd /opt/rinux   # or wherever you cloned it
git pull
./scripts/update.sh
```

The `update.sh` script can be extended to:
- Rebuild changed packages
- Rebuild the kernel if the config or patches changed
- Apply configuration updates

For more advanced atomic updates with rollback, consider [OSTree](https://ostreedev.github.io/ostree/) later.

## Getting Started

1. Clone this repo on your build machine:
   ```bash
   git clone https://github.com/deverri/Rinux.git
   cd Rinux
   ```
2. Follow LFS (or write your own scripts in `scripts/`).
3. Commit your changes frequently so you can roll back.

## Managing Bugs / Features

Use GitHub Issues and Projects on this repository to track bugs, planned features, and ideas as the project grows.
