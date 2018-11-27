require "yajl"

# Parse Big JSON
# https://stackoverflow.com/questions/53476973/parse-a-massive-json-array-of-hashes
class PBJ
  attr_reader :json_string, :json

  def initialize(file)
    @json_string = File.read(file)
  end

  def parse
    parser = Yajl::Parser.new(symbolize_keys: false)
    @json = parser.parse(json_string)
    self
  end
end
