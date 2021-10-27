# frozen_string_literal: true

require 'colorize'

def info_message(text)
  message("❯ #{text}".blue)
end

def progress_message(text)
  message(['!'.cyan.bold, text].join(' '))
end

def error_message(text)
  message("× #{text}".red)
end

def success_message(text)
  message("✔ #{text}".green)
end

def message(text)
  puts text
end
