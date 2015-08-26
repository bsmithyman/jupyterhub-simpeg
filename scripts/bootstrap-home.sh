#!/bin/bash

# ------------------------------------------------------------------------
# Replacement for automatic skel

mkdir -p $HOME

for loc in `ls -A /etc/skel`
do
  cp -r /etc/skel/${loc} $HOME/
done

# ------------------------------------------------------------------------
# Preconfigure IPython Directories

ipython2 << END
print('Writing IPython config.')
exit()
END

# ------------------------------------------------------------------------
# Startup

export STARTUP=$HOME/startup

cd $HOME
ln -s .ipython/profile_default/startup $STARTUP
