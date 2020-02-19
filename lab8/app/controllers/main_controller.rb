class MainController < ApplicationController
  def input
  end

  def view
      m = params[:m]
      @res = []
      @error = ''
     return @error = "Ошибка формата" unless is_number? m
     return @error = "Ошибка формата"  unless m.to_i > 0
      m_2 = m.to_i.to_s(2)
      n_2 = m_2.reverse
      n = n_2.to_i(2)
      @res = ["#{m} - #{m_2}","#{n_2} - #{n}"]
      
  end
  private
  def is_number? string
       true if Float(string) rescue false
   end
end
