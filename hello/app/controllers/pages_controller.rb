class PagesController < ApplicationController
  def home
    @name = 'Paula Paul'
    @message = 'Have a terrific weekend!'
  end
  
  def about
  end
end
