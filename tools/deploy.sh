#!/bin/sh

set +x

cp $HOME/repos/env.sh $HOME/env.sh
rsync -av $HOME/repos/webapp/go/ $HOME/webapp/go/
rsync -av $HOME/repos/webapp/sql/ $HOME/webapp/sql/
rsync -av $HOME/repos/webapp/pdns/ $HOME/webapp/pdns/



cd $HOME/webapp/go
make build

sudo service isupipe-go restart


scp $HOME/repos/env.sh isu02:$HOME/env.sh
rsync -av $HOME/webapp/go/ isu02:$HOME/webapp/go/
rsync -av $HOME/webapp/sql/ isu02:$HOME/webapp/sql/
rsync -av $HOME/webapp/pdns/ isu02:$HOME/webapp/pdns/

ssh isu02 "sudo service isupipe-go restart"

scp $HOME/repos/env.sh isu03:$HOME/env.sh
rsync -av $HOME/webapp/go/ isu03:$HOME/webapp/go/
rsync -av $HOME/webapp/sql/ isu03:$HOME/webapp/sql/
rsync -av $HOME/webapp/pdns/ isu03:$HOME/webapp/pdns/

ssh isu03 "sudo service isupipe-go restart"



