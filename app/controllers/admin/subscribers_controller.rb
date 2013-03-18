# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
class Admin::SubscribersController < Admin::BaseController
  require 'csv'

  def index
    super do |format|
      format.html
      format.csv do
        @subscribers = Subscriber.all
        response = CSV.generate do |csv|
          csv << ["Nome", "Email", "Telefone"]
          @subscribers.each do |subscriber|
            csv << [subscriber.name, subscriber.email, subscriber.phone]
          end
        end
        send_data response, :type => 'text/csv; charset=iso-8859-1; header=present', :disposition => "inline; filename=assinantes.csv"
      end
    end
  end

end
