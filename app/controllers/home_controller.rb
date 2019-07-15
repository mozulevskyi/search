class HomeController < ApplicationController

  def index
  end

  def input_data
    option = params[:option]

    if params[:variant] == 'by_name'
      @format = ByName.new
    elsif params[:variant] == 'by_type'
      @format = ByType.new
    elsif params[:variant] == 'by_design'
      @format = ByDesign.new
    end

    @all_values = Base.new(@format).find_data(option)
  end

end