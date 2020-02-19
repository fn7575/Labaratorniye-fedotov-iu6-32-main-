class CalcController < ApplicationController
  def new
  end

  def view
    n = params[:val].to_i
    @n = n
    if res=Shelter.find_by_value(n)
      @result = res.numbers
    else
      @result = binary_tranform(n)
      res = Shelter.create(:value=>n,:numbers=>@result)
    end
  end

  def binary_tranform(i)
    i.to_s(2).reverse.to_i(2)
  end
end
