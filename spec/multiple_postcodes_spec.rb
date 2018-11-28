describe MultiplePostcodesService do

  before(:all) do
    @postcodes_array = ['HP52BN','TW106NF','S101BJ']
    @multiple_postcodes_service = Postcodesio.new.multiple_postcodes_service
    @multiple_postcodes_service.get_multiple_postcodes(@postcodes_array)
  end

  it "should respond with a status message of 200" do
    expect(@multiple_postcodes_service.get_status.to_i).to eq 200
  end

  it "should have a results hash" do
    @multiple_postcodes_service.get_result.each do |result|
      expect(result).to be_kind_of(Hash)
    end
  end

end
