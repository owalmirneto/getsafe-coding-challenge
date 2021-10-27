# frozen_string_literal: true

describe DownloadImage do
  include_context 'when download image'

  subject(:downloader) { described_class.new(image) }

  let(:image) { build(:rails_image) }
  let(:image_url) { image.url }

  it { is_expected.to respond_to(:perform) }

  context 'description' do
    before { downloader.perform }

    let(:image_file_name) { image.url.split('/').last }
    let(:image_full_path) { "#{APP_ROOT}/downloads/#{image_file_name}" }

    it { expect(File.exists?(image_full_path)).to eq(true) }

    after { FileUtils.rm(image_full_path) }
  end
end
