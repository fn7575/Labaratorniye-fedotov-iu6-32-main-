class IndexController < ApplicationController
  def input
     render xml: "<body></body>"
  end
  def new
           m = params[:m]
                  @res = []
                
                 return render xml: "<body></body>" unless is_number? m
                 return render xml: "<body></body>"  unless m.to_i > 0
                  m_2 = m.to_i.to_s(2)
                  n_2 = m_2.reverse
                  n = n_2.to_i(2)
                  @res = ["#{m} - #{m_2}","#{n_2} - #{n}"]
             
                 
          xml = Nokogiri::XML::Builder.new { |table|
               table.body do
                 table.row do
                    table.m @res[0]
                    table.n @res[1]
                    end
                 end
             }
    render xml: xml
    end
  private
   def is_number? string
        true if Float(string) rescue false
    end
end
