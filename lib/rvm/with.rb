require 'session'

module RVM
  class ErrorLoadingRubyVersion < StandardError; end

  def self.with version, &block
    shell = Session::Bash.new
    stdout, stderr = shell.execute "ruby_version_path=$( rvm #{version} do rvm env -- --path ) && source $ruby_version_path"
    if shell.status == 0
      block.call(shell)
    else
      raise ErrorLoadingRubyVersion.new("Could not load ruby version '#{version}' error: '#{stderr.strip}'.")
    end
  end
end
