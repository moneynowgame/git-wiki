require 'rubygems'
require '~/.gem/ruby/1.8/gems/sinatra-0.9.4/lib/sinatra'

set :env, :production
disable :run
#   :raise_errors => true

require 'git-wiki'

wiki_home = File.expand_path( File.dirname( __FILE__ ) + '/../wiki_data' )

run GitWiki.new(wiki_home, ".markdown", "Home")
