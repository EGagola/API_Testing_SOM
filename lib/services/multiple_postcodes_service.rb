require 'httparty'
require 'json'

class MultiplePostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)

  end

end
