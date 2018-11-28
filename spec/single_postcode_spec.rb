describe SinglePostcodeService do

  before(:all) do
    @single_postcode_service = Postcodesio.new.single_postcode_service
    @single_postcode_service.get_single_postcode('B601JA')
  end

  it 'should respond with a status message of 200' do
    expect(@single_postcode_service.get_status).to eq 200
  end
end
