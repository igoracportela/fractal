# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Client < ActiveRecord::Base
  attr_accessible :description, :image, :name, :slug

  # friendly_id
  extend FriendlyId
  friendly_id :name, :use => :slugged
  
  # Carrierwave
  mount_uploader :image, ClientUploader
  
  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :name, :presence => true
  
  # Translate
  translates :name, :description

  # Scope
  default_scope order('created_at desc')
  scope :lasts, limit(8)
end
