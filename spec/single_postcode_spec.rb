describe SinglePostcodeService do

  before(:all) do
    @single_postcode_service = Postcodesio.new.single_postcode_service
    @single_postcode_service.get_single_postcode('HP52BN')
  end

  it "should respond with a status message of 200" do
    expect(@single_postcode_service.get_status.to_i).to eq 200
  end

  it "should have a results hash" do
    expect(@single_postcode_service.get_result).to be_kind_of(Hash)
  end
end
