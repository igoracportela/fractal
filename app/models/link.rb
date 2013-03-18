# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Link < ActiveRecord::Base
  attr_accessible :description, :image, :slug, :title, :url

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  # Carrierwave
  mount_uploader :image, LinkUploader

  # Validations
  validates :title, :presence => true
  validates :url, :presence => true

  # Translate
  translates :title, :description, :url

  # Scope
  default_scope order('created_at desc')
  scope :lasts, limit(4)
end
