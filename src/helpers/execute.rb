# frozen_string_literal: true

require 'fileutils'

def execute(command)
  execute_message(command)

  system!(command)
end

def system!(*args)
  system(*args) || abort
end
