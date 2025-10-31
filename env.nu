$env.XDG_CONFIG_HOME = ($env.HOME | path join ".config")
$env.XDG_CACHE_HOME  = ($env.HOME | path join ".cache")
$env.XDG_DATA_HOME   = ($env.HOME | path join ".local" "share")

let paths = [
  "/usr/local/bin"
  "/usr/bin"
  "/bin"
  ($env.HOME | path join ".local" "bin")
]
$env.PATH = (
  $env.PATH
  | split row (char esep)
  | prepend "/opt/mssql-tools/bin"
  | prepend ($env.HOME | path join ".local" "bin")
  | prepend ($env.HOME | path join ".local" "share" ".." "bin")
  | uniq
  | str join (char esep)
)

# Starship prompt
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

# pnpm
$env.PNPM_HOME = "/home/harataku/.local/share/pnpm"
$env.PATH = ($env.PATH | split row (char esep) | prepend $env.PNPM_HOME )
# pnpm end

# Google Cloud SDK
$env.PATH = ($env.PATH | split row (char esep) | prepend '/home/harataku/google-cloud-sdk/bin')
