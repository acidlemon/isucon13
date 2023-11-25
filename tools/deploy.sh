#!/bin/sh


rsync -av $HOME/repos/webapp/go/ $HOME/webapp/go/
cd $HOME/webapp/go
make build




