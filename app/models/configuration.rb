# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Configuration < Settingslogic
  source "#{Rails.root}/config/application.yml"
  namespace Rails.env
end
