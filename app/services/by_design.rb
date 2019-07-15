class ByDesign
  def search_option(option)
    all_values = []
    value = option.downcase
    DATA_HASH.each do |opt|
      opt["Designed by"].split(',').each do |type_value|
        if type_value.strip.downcase == value
          all_values << opt
        end
      end
    end
    all_values
  end
end