class ByName
  def search_option(option)
    all_values = []
    value = option.downcase
    DATA_HASH.each do |opt|
      if opt["Name"].downcase == value
        all_values << opt
      end
    end
    all_values
  end
end