# frozen_string_literal: true

class DownloadImage
  def self.call(image)
    new(image).perform
  end

  def initialize(image)
    @image = image
  end

  def perform
    progress_message("Downloading #{image.url}")

    if image?
      FileUtils.mv(tempfile.path, image_destination)
      success_message("#{tempfile.original_filename} downloaded successfully")
    else
      error_message('Download was failed')
    end
  end

  private

  attr_reader :image

  def image?
    tempfile&.content_type&.include?('image/')
  rescue Down::ResponseError
    false
  end

  def tempfile
    @tempfile ||= Down.download(image.url) if image.valid_url?
  end

  def image_destination
    "#{APP_ROOT}/downloads/#{tempfile.original_filename}"
  end
end
