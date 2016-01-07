#!/usr/bin/env ruby
g = ['Y', 'y', "\n"]
at_exit { ap "Goodbye" }
require 'awesome_print'
require './classes/start.rb'

s = Start.new
s.choose_container





#   -a, --attach=[]                 Attach to STDIN, STDOUT or STDERR
#   -d, --detach=false              Run container in background and print container ID
#   -e, --env=[]                    Set environment variables
#   --entrypoint=                   Overwrite the default ENTRYPOINT of the image
#   --env-file=[]                   Read in a file of environment variables
#   --expose=[]                     Expose a port or a range of ports
#   --group-add=[]                  Add additional groups to join
#   -h, --hostname=                 Container host name
#   --help=false                    Print usage
#   -i, --interactive=false         Keep STDIN open even if not attached
#   --link=[]                       Add link to another container
#   --name=                         Assign a name to the container
#   --net=default                   Set the Network for the container
#   --oom-kill-disable=false        Disable OOM Killer
#   -P, --publish-all=false         Publish all exposed ports to random ports
#   -p, --publish=[]                Publish a container's port(s) to the host
#   --restart=no                    Restart policy to apply when a container exits
#   --rm=false                      Automatically remove the container when it exits
#   -t, --tty=false                 Allocate a pseudo-TTY
#   -v, --volume=[]                 Bind mount a volume
#   --volumes-from=[]               Mount volumes from the specified container(s)
#   -w, --workdir=                  Working directory inside the container
