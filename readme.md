# Config installieren
---
## Arch Linux instalieren
1. Image erstellenn
2. Mit dem Ethernet verbindden
3. `archinstall` ausfuehren
    - `ext4`
    - `home`
    - `no swap`
    - `Gnome desktop`
    - `linux-zen`
    - `PulseAudio`
    - `NetworkManager`
4. Nicht ins System booten
5. `poweroff`eingeben und USB-Stick entfernen
6. Einloggen
7. Git herunterladen

---
## Dotfiles anwenden
1. Projekt mit git clonen
2. in den Ordner wechseln
3. `chmod u+x ./install.sh` ausführen
4. `./install.sh` ausführen
5. execute `vim ~/.bashrc`
6. `eval "$(starship init bash)"` am ende einfuegen
7. ausloggen und in hyprland einloggen
8. in code menu bar ausblenden mit `View -> Appearance -> Menu Bar`
9. github material theme darker und material icon theme installieren


---
# Nützliche Befehle:
- `nmcli device wifi connect s_s_i_d -a`

---
# Fixes
## Audio spielt nicht:
- `sudo pacman -Syu` : Update the system to make sure there is no partial upgrade or something else that might have gone wrong.

- `sudo pacman -S pipewire pipewire-pulse pipewire-alsa wireplumber` : Any errors / warnings or does it go through cleanly?

Then, clear wireplumber cache: `rm ~/.local/state/wireplumber/*` : This solved such issues in the past.

Restart.

Then, if it still happens:

- `systemctl --user restart pipewire wireplumber`

Restart the browser and try again.

Afterwards, we can check more about your sound cards, check the journal, and see if there is anything that can be done.

i installed the rest of the gstreamer plugins

Why? I think only gstreamer is required, and it and any of the plugins will be pulled as dependencies. No need to install explicitly. So remove those with pacman -Rns.

Did you do anything else that might be related to audio? Any packages / outside things installed, or any configuration? We should know about those in case they might be interfering.


---
## VS Code
- Material Theme Icons: `https://open-vsx.org/vscode/item?itemName=Equinusocio.vsc-material-theme-icons`
- Material Theme: `https://open-vsx.org/vscode/item?itemName=Equinusocio.vsc-material-theme` -> Material Theme Darker High Contrast
- GitLens: `https://open-vsx.org/vscode/item?itemName=eamodio.gitlens`

---
## chrome
- set the appearence to `https://chromewebstore.google.com/detail/aura-theme/ddipnaombfnagpagnpdkdinoekfhfjoh?hl=en`
