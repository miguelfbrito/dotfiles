target=~/.config/gtk-3.0
mkdir -p $target
cat > $target/gtk.css <<'end'
VteTerminal, vte-terminal {
   padding: 15px;
}
end
