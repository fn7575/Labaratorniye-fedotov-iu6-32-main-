class IndexController < ApplicationController
  def input
      m = params[:m]
      @res = []
          return unless is_number? m
          return unless m.to_i > 0
           m_2 = m.to_i.to_s(2)
           n_2 = m_2.reverse
           n = n_2.to_i(2)
           @res = ["#{m} - #{m_2}","#{n_2} - #{n}"]
           
    respond_to do |format|
        format.html
        format.json do render json: {type: @res.class.to_s, value: @res} end
    end
  end
  
  private
  def is_number? string
       true if Float(string) rescue false
   end
  
end
