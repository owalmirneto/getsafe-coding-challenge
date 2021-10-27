# frozen_string_literal: true

describe ImagesByFile do
  subject(:image_service) { described_class.new('spec/factories/images.txt') }

  let(:images) { image_service.perform }

  it { is_expected.to respond_to(:perform) }

  it { expect(images).to be_an(Array) }

  it { expect(images.sample).to be_an(Image) }
end
