class ByDesign
  def search_option(option)
    all_values = []
    value = option.downcase
    DATA_HASH.each do |opt|
      opt["Designed by"].split(',').each do |type_value|
        if type_value.strip.downcase.match?(value[0..8])
          all_values << opt
        end
      end
    end
    all_values
  end
end