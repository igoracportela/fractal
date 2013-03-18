# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
class Admin::Panel::IndexPresenter
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def last_subsribers
    Subscriber.lasts
  end
  
  def last_galleries
    Gallery.lasts
  end
  
  def last_news
    News.lasts
  end
  
  def last_pages
    Page.lasts
  end
  
end
