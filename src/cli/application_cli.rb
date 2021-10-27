# frozen_string_literal: true

class ApplicationCLI
  def self.start(args)
    new(args).start
  end

  def initialize(args)
    @args = args
  end

  def start
    handler_args

    execution
  end

  private

  attr_accessor :args

  def handler_args
  end

  def execution
    raise NotImplementedError, 'subclass did not define #execution'
  end

  def feedback
  end
end
