# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  def error_messages(resource)
    unless resource.nil? || resource.errors.empty?
      
      html = ""
      
      resource.errors.full_messages.each do |message|
        html += "<div class=\"nNote hideit error\">"
        html +=   "<p>#{message}</p>"
        html += "</div>"
      end
      
      html.html_safe
    end
  end
  
  def to_boolean(boolean)
    boolean ? "Sim" : "Não"
  end
  
  def to_date(date)
    date.is_a?(Time) ? date.strftime("%d/%m/%Y") : date
  end
  
  def to_datetime(datetime)
    datetime.is_a?(Time) ? datetime.strftime("%d/%m/%Y, %H:%M") : datetime
  end
  
  def to_price(price)
    "R$ %.2f" % price
  end
  
  def to_time(time)
    time.is_a?(Time) ? time.strftime("%H:%M") : time
  end
  
  # Modules
  def subscribers_activated?
    Configuration.modules.subscribers
  end
  
  def clients_activated?
    Configuration.modules.clients
  end
  
  def testemonials_activated?
    Configuration.modules.testemonials
  end
  
  def documents_activated?
    Configuration.modules.documents
  end
  
  def enquetes_activated?
    Configuration.modules.polls
  end
  
  def events_activated?
    Configuration.modules.events
  end
  
  def employees_activated?
    Configuration.modules.employees
  end
  
  def galleries_activated?
    Configuration.modules.galleries
  end
  
  def links_activated?
    Configuration.modules.links
  end
  
  def news_activated?
    Configuracao.modules.news
  end
  
  def pages_activated?
    Configuration.modules.pages
  end
  
  def products_activated?
    Configuration.modules.products
  end
  
  def projects_activated?
    Configuration.modules.projects
  end
  
  def services_activated?
    Configuration.modules.services
  end
  
  def videos_ativados?
    Configuration.modules.videos
  end
  
end
