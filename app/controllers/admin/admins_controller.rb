# Author - Igor Amorim Costa Portela - www.igoramorim.com | Copyright(c) 2012. All rights reserved.
class Admin::AdminsController < Admin::BaseController
  layout 'admin'
  before_filter :authenticate_admin!
  
  load_and_authorize_resource
end