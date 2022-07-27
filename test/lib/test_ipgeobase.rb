# frozen_string_literal: true

require 'test_helper'

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_get_data_from_ip
    ip_address = "8.8.8.8"
    uri = URI("http://ip-api.com/xml/#{ip_address}")

    stub_request(:get, uri)
      .to_return(body: File.read('test/fixtures/response.xml'), status: 200)  

    data = Ipgeobase.lookup('8.8.8.8')
    assert { 'Ashburn' == data.city }
    assert { 'United States' == data.country }
    assert { 'US' == data.country_code }
    assert { '39.03' == data.lat.to_s }
    assert { '-77.5' == data.lon.to_s }
  end
end
