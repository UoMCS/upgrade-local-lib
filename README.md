# Upgrade local::lib

Scripts for upgrading all Perl modules installed by local::lib. Unfortunately
this somewhat kludgy solution is necessary because there is no simple command
to upgrade everything installed by local::lib.

Start the process by running `run.sh` whilst logged in as the user whose
local::lib modules you want to upgrade.

WARNING: These scripts are not atomic or transactional, if the process fails
or is aborted you will have to recover manually using the following commands:

```
rm -rf $HOME/perl5
mv $HOME/perl5.backup $HOME/perl5
```

The upgrade process can also take a long time to run and your local::lib
installation will be unavailable for the entire period.
