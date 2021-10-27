# frozen_string_literal: true

shared_context 'when download image' do
  before do
    stub_request(:get, image_url)
      .with(request_headers)
      .to_return(return_response)
  end

  let(:request_headers) do
    {
      headers: {
        'Accept' => '*/*',
        'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent' => 'Down/5.2.4'
      }
    }
  end

  let(:return_response) do
    { status: 200,
      headers: { 'Content-Type' => 'image/png' },
      body: File.read("#{APP_ROOT}/spec/factories/rails.png") }
  end
end
