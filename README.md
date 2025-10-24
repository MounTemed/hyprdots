<div align="center">

![This image did not load](./.github/assets/screenshot/HyprDots.png)

</div>

<div align="center">

![Commit](https://img.shields.io/github/last-commit/MounTemed/hyprdots?style=for-the-badge&logo=git&logoColor=D9E0EE&labelColor=0d1117&color=2b3946)
![Tag](https://img.shields.io/github/v/tag/MounTemed/hyprdots?style=for-the-badge&logo=github&logoColor=D9E0EE&labelColor=0d1117&color=22241c)
![Folder](https://img.shields.io/github/languages/code-size/MounTemed/hyprdots?style=for-the-badge&logo=protondrive&logoColor=D9E0EE&labelColor=0d1117&color=2b3946)
![Stars](https://img.shields.io/github/stars/MounTemed/hyprdots?style=for-the-badge&logo=andela&logoColor=D9E0EE&labelColor=0d1117&color=22241c)

<p>My quick NixOS configuration setup</p>

</div>

<h1></h1>

<div align="center">
  <h3> ❄️ Overview ✨ </h3>
</div>

<details>
<summary>✨ Features</summary>

- **Quick Setup** – You can literally install the entire system with all its settings using just one command
- **Maximum Reproducibility** – If it works for me, it will work for everyone
- **State-of-the-Art Technology** - Forget about legacy code; use only the newest packages

</details>


<details>
<summary>🛠️ Technologies</summary>

- **Hyprland**: Dynamic tiling Wayland compositor that looks great.
  [github.com/hypwm/hyprland](https://github.com/hypwm/hyprland)
- **Hyprcontrib**: grimblast - A Hyprland version of Grimshot.
  [github.com/hyprwm/contrib](https://github.com/hyprwm/contrib)
- **Quickshell**: Universal bar for C++ and Qt6.
  [github.com/quickshell-mirror/quickshell](https://github.com/quickshell-mirror/quickshell)
- **Foot**: Fast wayland terminal with xterm support.
  [codeberg.org/dnkl/foot](https://codeberg.org/dnkl/foot)
- **Zen-Browser**: Firefox fork for a nicer browsing experience.
  [github.com/zen-browser/desktop](https://github.com/zen-browser/desktop)

</details>

<details>
<summary>📦 Installation</summary>

1. **Identify the target disk**:

   ```bash
   lsblk
   ```

   Note the disk (e.g., `/dev/nvme0n1`). Double-check to avoid data loss.

2. **Obtain a disko layout**:
   Clone a repository with a `disko.nix` file or create your own:

   ```bash
   git clone https://github.com/LinuxFamily/LuneDots
   ```

   Ensure `disko.nix` matches your disk and partition needs.

3. **Format the disk**:
   Run `disko` to partition and format the disk (this erases all data):

   ```bash
   sudo nix run github:nix-community/disko -- --mode disko ./LuneDots/disko.nix --arg device '"/dev/nvme0n1"'
   ```

4. **Generate hardware configuration**:
   Create a `hardware-configuration.nix` file:

   ```bash
   sudo nixos-generate-config --no-filesystems --root .
   ```

5. **Set up host configuration**:
   Copy the generated file to your host directory:

   ```bash
   cp ./etc/nixos/hardware-configuration.nix ./HyprDots/hosts/io/
   ```

6. **Install NixOS**:
   Install the system to `/mnt` using the flake:

   ```bash
   nixos-install --root /mnt --flake ./HyprDots
   ```

   Set a root password with `passwd` or configure SSH keys if prompted.

7. **Reboot**:
   Unmount filesystems and reboot:
   ```bash
   umount -R /mnt
   reboot
   ```

</details>

<div align="center">
  <h3> ✨ Screenshots ❄️ </h3>
</div>

![This image did not load](./.github/assets/screenshot/pictures.png)
