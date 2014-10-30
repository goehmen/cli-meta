Goal:
to create a catalog of CF CLI commands with output that refreshes on demand and thus is not ever static or out of date.  The app will use the version installed on the machine it runs from.  

Ideally, versions can be saved off and cataloged.  

The point is to be able to see the interaction of a given command and to compare inteactions side-by-side for different commands.  This way, one can obtain a big picture of the interaction across many or even all commands visually in order to understand the full user experience and make sure that all commands fit into the overall template or look and feel of the superset of commands.  

This holds true for actual commands and for the --help output of any commands

todo:

look at CATS to see what can be borrowed
move cli-help-list.sh to python and do the rest in python
set up a webserver and be able to pipe script output to a webpage in a browser
create the whole thing as an app that can live on cf.

