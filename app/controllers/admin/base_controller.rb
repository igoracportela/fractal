# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
class Admin::BaseController < InheritedResources::Base
  before_filter :authenticate_admin!
  layout 'admin'
end
