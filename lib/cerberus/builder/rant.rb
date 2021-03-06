require 'cerberus/builder/ruby_base'

class Cerberus::Builder::Rant < Cerberus::Builder::RubyBase
  def initialize(config)
    super(config, "rant")
  end

  def successful?
    $?.exitstatus == 0 and not @output.include?("#{@cmd} aborted!") and @output.include?("0 failures, 0 errors")
  end
end
