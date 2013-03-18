# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Gallery < ActiveRecord::Base
  attr_accessible :description, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  # Relationships
  has_many :photos
  
  # Validations
  validates :title, :presence => true
  
  # Translate
  translates :title, :description
  
  # Scopes
  scope :last, limit(5).order('created_at desc') 
end
