# file location -> ~/.config/fish/config.fish

function random_quote
  set animal (random choice {default,dragon,dragon-and-cow,elephant,moose,stegosaurus,tux,vader})
  fortune -s | cowsay -f $animal
end

if status is-interactive
    random_quote
    starship init fish | source
    cd ./work
    alias kl "kubectl"
end
