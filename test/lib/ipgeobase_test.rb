# frozen_string_literal: true

require 'test_helper'

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_it_does_something_useful
    assert false
  end

  def test_get_data_from_ip
    data = Ipgeobase.lookup('8.8.8.8')
    p 'Ashburn' == data.city
    assert { 'Ashburn' == data.city }
    assert { 'United States' == data.country }
    assert { 'US' == data.countryCode }
    assert { '39.03' == data.lat.to_s }
    assert { '-77.5' == data.lon.to_s }
    ip_meta.country # United States
    ip_meta.countryCode # US
    ip.lat # 39.03
    ip.lon # -77.5
  end
end
