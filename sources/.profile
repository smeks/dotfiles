# Added by Toolbox App
PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"

# Others
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.local/share/go/bin"

# Video
export GST_PLUGIN_FEATURE_RANK="nvmpegvideodec:MAX,nvmpeg2videodec:MAX,nvmpeg4videodec:MAX,nvh264sldec:MAX,nvh264dec:MAX,nvjpegdec:MAX,nvh265sldec:MAX,nvh265dec:MAX,nvvp9dec:MAX"
#export MESA_GL_VERSION_OVERRIDE=3.3 
#export MESA_GLSL_VERSION_OVERRIDE=330

#export XDG_SESSION_TYPE="wayland"
#export QT_QPA_PLATFORM="xcb"
#export QT_WAYLAND_FORCE_DPI="120"

export __NV_PRIME_RENDER_OFFLOAD=1 nvidia
export GBM_BACKEND=nvidia-drm

alias ls="exa"
alias la="exa -a"
alias ll="exa -l"
alias lla="exa -la"
alias ls="exa $param"

alias find="fd"
alias grep="rg"
alias ps="procs"

alias restart_kde="plasmashell --replace > /dev/null 2>&1 & disown"

source /usr/share/nvm/init-nvm.sh


CFLAGS="-w -pipe"
CXXFLAGS="-w -pipe"




