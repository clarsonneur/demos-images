#!/bin/bash
#
#

export PATH=~/.gem/bin:$PATH

bundle --binstubs=~/.gem/bin --path=~/.gem
rake $1
