#! bash

export RUBY_CONFDIR=$PWD/conf/ruby
export GEMRC=$PWD/conf/ruby/.gemrc
export GEM_HOME=$RUBY_CONFDIR/gems

export PATH=$GEM_HOME/bin:$PATH