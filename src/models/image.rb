# frozen_string_literal: true

class Image
  attr_accessor :url

  def initialize(url: nil)
    @url = url
  end

  def valid_url?
    uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)
  rescue ::URI::InvalidURIError
    false
  end

  private

  def uri
    @uri ||= URI.parse(url)
  end
end
