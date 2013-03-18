# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :slug

  # friendly_id
  extend FriendlyId
  friendly_id :description, :use => :slugged
  
  # Carrierwave
  mount_uploader :image, PhotoUploader
  
  # Relationships
  belongs_to :gallery
  
  # Validations
  validates :gallery, :presence => true

  # Translate
  translates :description

  # Scope
  scope :slides, joins(:gallery).where("galeries.slug = ?", "slider")
end
