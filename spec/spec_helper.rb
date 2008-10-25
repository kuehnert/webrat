require "rubygems"
require "spec"
require "spec/interop/test"

# gem install redgreen for colored test output
begin require "redgreen" unless ENV['TM_CURRENT_LINE']; rescue LoadError; end

require File.expand_path(File.dirname(__FILE__) + "/../lib/webrat")
require File.expand_path(File.dirname(__FILE__) + "/fakes/test_session")
require File.expand_path(File.dirname(__FILE__) + "/../lib/webrat/merb/param_parser")
require File.expand_path(File.dirname(__FILE__) + "/../lib/webrat/merb/url_encoded_pair_parser")

Spec::Runner.configure do |config|
  # Nothing to configure yet
end