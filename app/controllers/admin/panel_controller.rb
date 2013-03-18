# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
class Admin::PanelController < Admin::BaseController
  def index
  	@presenter = Admin::Panel::IndexPresenter.new
  end
end
