if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# System-type - either "personal" or "work"
export ALC_SYSTEM_TYPE="personal"

# Data dir
# On Linux, the home directory. On Windows, it will typically be
# something else.
export ALC_DATA_DIR="${HOME}"
