# frozen_string_literal: true

describe Image do
  subject(:image) { build(:image) }

  it { is_expected.to respond_to(:url) }
  it { is_expected.to respond_to(:valid_url?) }

  context 'when image is valid' do
    it { is_expected.to be_valid_url }
  end

  context 'when image is invalid' do
    subject(:image) { build(:invalid_image) }

    it { is_expected.not_to be_valid_url }
  end
end
