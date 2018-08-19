require "azn_converter/version"
require "azn_converter/convert"

module AZNConverter
end

class Integer
  include AZNConverter::Convert
end

class Float
  include AZNConverter::Convert
end
