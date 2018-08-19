# encoding: UTF-8

require 'humanize'
require 'nokogiri'
require 'net/http'

module AZNConverter::Convert
  def to_azn(options = {current: true, from: :usd})
    int = self

    if options[:current] == true
      value = AZNConverter::Convert::get_currency(int, options[:from])
    elsif options[:current] > 0
      value = int * options[:current]
    else
      return nil
    end

    if options[:words]
      if value.is_a? Integer
        value = value.humanize(locale: :az) + ' manat'
      elsif value.is_a? Float
        value = "%.2f" % value
        value = begin
          w = value.to_i.humanize(locale: :az) + ' manat '
          w += (value.to_s[(value.to_s.index('.') + 1)..(value. to_s.index('.') + 2)]).to_i.humanize(locale: :az) + ' qəpik'
        end
      end
    end

    value = value.to_s + " \u20BC" if options[:sign]
    return value
  end

  def self.get_currency(int, currency)
    page = Net::HTTP.get(URI("https://coinmill.com/AZN_#{currency.to_s.upcase}.html?#{currency.to_s.upcase}=#{int}"))
    return Nokogiri::HTML(page).xpath('//*[@id="currencyBox1"]/input')[0].to_a.last.last.to_f
  end
end
