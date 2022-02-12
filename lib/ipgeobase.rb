# frozen_string_literal: true

require_relative 'ipgeobase/version'
require 'addressable/uri'
require 'net/http'
require 'happymapper'

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip_address)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip_address}")
    xml = Net::HTTP.get(uri)
    HappyMapper.parse(xml)
  end
end

# ip_meta = Ipgeobase.lookup('8.8.8.8')
# p ip_meta.city
