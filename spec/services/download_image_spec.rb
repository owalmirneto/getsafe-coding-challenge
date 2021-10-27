# frozen_string_literal: true

describe DownloadImage do
  subject(:downloader) { described_class.new(image) }

  include_context 'when download image'

  let(:image) { build(:rails_image) }
  let(:image_url) { image.url }

  it { is_expected.to respond_to(:perform) }

  context 'when perform downloader' do
    before { downloader.perform }

    let(:image_file_name) { image.url.split('/').last }
    let(:image_full_path) { "#{APP_ROOT}/downloads/#{image_file_name}" }

    after { FileUtils.rm(image_full_path) }

    it { expect(File.exist?(image_full_path)).to eq(true) }
  end
end
