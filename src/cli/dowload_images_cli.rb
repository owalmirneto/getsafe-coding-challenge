# frozen_string_literal: true

class DownloadImagesCLI < ApplicationCLI
  private

  attr_reader :file_path

  def execution
    images.map { |image| DownloadImage.call(image) }
  end

  def handler_args
    @file_path = args.first
  end

  def images
    ImagesByFile.call(@file_path)
  end
end
