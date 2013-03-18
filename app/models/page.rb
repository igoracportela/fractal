# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Page < ActiveRecord::Base
  attr_accessible :content, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  # Validations
  validates :title, :presence => true
  validates :content, :presence => true
  
  # Scope
  scope :lasts, limit(5).order('created_at desc')
  
  # Translate
  translates :title, :content
end
