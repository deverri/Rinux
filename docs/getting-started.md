# Getting Started with Rinux

## Prerequisites

- A working Linux system (any modern distro) to use as a build host
- Plenty of disk space (at least 20–30 GB free)
- Time and patience (building from scratch takes hours)

## Steps

1. **Read Linux From Scratch**
   - Official book: https://www.linuxfromscratch.org/lfs/
   - This teaches you every step of building a minimal Linux system.

2. **Clone this repository** on your build machine.

3. **Start building**
   - Either follow LFS manually while recording your choices in this repo,
   - Or write automation scripts in `scripts/`.

4. **Commit often**
   - Every successful package or configuration change should be committed.
   - This gives you clean rollback points.

## On the Running System

Once you have a bootable Rinux:

```bash
git clone https://github.com/deverri/Rinux.git /opt/rinux
cd /opt/rinux
./scripts/update.sh
```

Make the update script executable:
```bash
chmod +x scripts/update.sh
```
