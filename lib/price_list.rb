require 'json'
class Price_list

  def initialize
    @file_name = 'hipstercoffee.json'
  end

  def get_price_list
    file = read_file
    data_hash = JSON_to_hash(file)
  end

  def read_price_list
    data_hash = get_price_list
    price_array = data_hash['prices']
    price_hash = price_array.reduce Hash.new, :merge
  end




private

  def read_file
    File.read(@file_name)
  end

  def JSON_to_hash(file)
    data_array = JSON.parse(file)
    data_hash = data_array.reduce Hash.new, :merge
  end

end
