require 'rubygems'
require 'open-uri'
require 'nokogiri'

class DataScrappersController < ApplicationController
  def index

  end
  def new
    @websit=params[:websit]
     @signin=Array.new
    doc = Nokogiri::HTML(open("#{@websit}"))
    doc_info=doc.to_s
    if ((doc_info.include? "Login") || (doc_info.include? "Log In") || (doc_info.include? "Sign In"))
      @signin << "Yes"
    else
      @signin << "No" 
    end
 render :text => @signin 
  end
end
