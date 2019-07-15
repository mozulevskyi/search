class ByType
  def search_option(option)
    all_values = []
    value = option.downcase
    DATA_HASH.each do |opt|
      opt["Type"].split(',').each do |type_value|
        if type_value.strip.downcase.match?(value[0..6])
          all_values << opt
        end
      end
    end
    all_values
  end
end