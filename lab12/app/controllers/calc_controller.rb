class CalcController < ApplicationController
  before_action :authenticate_user!


  def input
  end

  def view
    n = params[:val].to_i
    @result = binary_tranform(n)
  end

  def binary_tranform(i)
    i.to_s(2).reverse.to_i(2)
  end
end
