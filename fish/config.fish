if not functions -q undle; eval (curl -sfL https://raw.fastgit.org/tuvistavie/fundle/master/install-fundle.fish | sed 's#https://git.io/fundle#https://raw.fastgit.org/tuvistavie/fundle/master/functions/fundle.fish#'); end

fundle plugin hauleth/agnoster

fundle init

if status is-interactive
end
