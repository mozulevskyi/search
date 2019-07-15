class ByName
  def search_option(option)
    all_values = []
    value = option.downcase
    DATA_HASH.each do |opt|
      if opt["Name"].downcase.match?(value[0..6])
        all_values << opt
      end
    end
    all_values
  end
end