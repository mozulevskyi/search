class Base

  attr_reader :formatter

  def initialize(formatter)
    @formatter = formatter
  end

  def find_data(option)
    formatter.search_option(option)
  end

end