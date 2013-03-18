# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :slug

  # friendly_id
  extend FriendlyId
  friendly_id :name, :use => :slugged
  
  # Validations
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  # Scope
  scope :lasts, limit(5).order('created_at desc')
end
