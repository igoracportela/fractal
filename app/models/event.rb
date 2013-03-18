# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Event < ActiveRecord::Base
  attr_accessible :date, :description, :image, :schedule, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  # Carrierwave
  mount_uploader :image, EventUploader
  
  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :title, :presence => true
  validates :date, :presence => true

  # Translate
  translates :title, :descricao
end
