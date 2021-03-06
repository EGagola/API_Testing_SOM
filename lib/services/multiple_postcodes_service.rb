require 'httparty'
require 'json'

class MultiplePostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcodes_data = JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status
    @multiple_postcodes_data['status']
  end

  def get_result
    @multiple_postcodes_data['result']
  end
end
