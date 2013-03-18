# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Service < ActiveRecord::Base
  attr_accessible :descritpion, :detailed_description, :image, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged

  # Carrierwave
  mount_uploader :image, ServiceUploader

  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :title, :presence => true

  # Scope
  default_scope order('created_at desc')
  scope :lasts, limit(4)
  
  # Translate
  translates :title, :description, :detailed_description
end
