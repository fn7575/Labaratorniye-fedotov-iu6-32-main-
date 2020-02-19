require 'open-uri'

class IndexController < ApplicationController
    def input
    end

  def output
      @m = params[:m]
      @side = params[:side]
      my_url = "http://localhost:3000/#{@m}"
      
      api_response = open(URI.parse(URI.encode(my_url)))
      if @side == 'server'
          @result = xslt_transform(api_response).to_html
      elsif @side == 'client-with-xslt'
           render xml: insert_browser_xslt(api_response).to_xml
          else
            render xml: api_response
    end
  end
  private
  def xslt_transform(data)
    server_conventer = "#{Rails.root}/public/server_converter.xslt"
    puts server_conventer
    puts data
     doc = Nokogiri::XML(data)
     xslt = Nokogiri::XSLT(File.read(server_conventer))
     xslt.transform(doc)
   end
  def insert_browser_xslt(data)
      client_convenotr = 'browser_converter.xslt'
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XML::ProcessingInstruction.new(doc,'xml-stylesheet', 'type="text/xsl" href="' + client_convenotr + '"')
    doc.root.add_previous_sibling(xslt)
    doc
  end
end
