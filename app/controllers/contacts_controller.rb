class ContactsController < ApplicationController

  def contact
  end

  def about
        render 'pages/about'
  end
  def services
    render 'pages/services'
  end
  def other
    render 'pages/other'
  end
  def blog
    render 'pages/blog'
  end
end
