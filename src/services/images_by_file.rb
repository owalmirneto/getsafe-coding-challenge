# frozen_string_literal: true

class ImagesByFile
  def self.call(file_path)
    new(file_path).perform
  end

  def initialize(file_path)
    @file_path = file_path
  end

  def perform
    content_file.split.map { |images_url| Image.new(url: images_url) }
  end

  private

  attr_reader :file_path

  def content_file
    @content_file ||= File.read(current_file_path)
  end

  def current_file_path
    file_path if File.exist?(file_path)

    "#{APP_ROOT}/#{file_path}"
  end
end
