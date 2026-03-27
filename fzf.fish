set -l color00 '#333333'
set -l color01 '#3d3d3d'
set -l color02 '#474747'
set -l color03 '#515151'
set -l color04 '#5b5b5b'
set -l color05 '#656565'
set -l color06 '#6f6f6f'
set -l color07 '#cccccc'
set -l color08 '#4a4a4a'
set -l color09 '#545454'
set -l color0A '#5e5e5e'
set -l color0B '#686868'
set -l color0C '#727272'
set -l color0D '#7c7c7c'
set -l color0E '#868686'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
