yay -Sy --noconfirm --needed ttf-font-awesome noto-fonts noto-fonts-emoji noto-fonts-cjk noto-fonts-extra

mkdir -p ~/.local/share/fonts

if ! fc-list | grep -qi "JetBrainsMono Nerd Font"; then
  cd /tmp
  wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
  unzip JetBrainsMono.zip -d JetBrainsMonoFont
  cp JetBrainsMonoFont/JetBrainsMonoNerdFont-Regular.ttf ~/.local/share/fonts
  cp JetBrainsMonoFont/JetBrainsMonoNerdFont-Bold.ttf ~/.local/share/fonts
  cp JetBrainsMonoFont/JetBrainsMonoNerdFont-Italic.ttf ~/.local/share/fonts
  cp JetBrainsMonoFont/JetBrainsMonoNerdFont-BoldItalic.ttf ~/.local/share/fonts
  rm -rf JetBrainsMono.zip JetBrainsMonoFont
  fc-cache
  cd -
fi

if ! fc-list | grep -qi "iA Writer Mono S"; then
  cd /tmp
  wget -O iafonts.zip https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.zip
  unzip iafonts.zip -d iaFonts
  cp iaFonts/iA-Fonts-master/iA\ Writer\ Mono/Static/iAWriterMonoS-*.ttf ~/.local/share/fonts
  rm -rf iafonts.zip iaFonts
  fc-cache
  cd -
fi
