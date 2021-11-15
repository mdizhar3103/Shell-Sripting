# Using the xtrace options to the current interactive shell

cat > my.sh <<END
echo "Hello World"
END

bash my.sh

bash -x my.sh

file my.sh

vim my.sh
# add the shebang  #!/bin/bash
file my.sh

ls
set -x 
# (or set -o xtrace)
ls
ls $HOME

# to disable
set +x
