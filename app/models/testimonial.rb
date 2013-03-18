# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Testimonial < ActiveRecord::Base
  attr_accessible :description, :image, :name, :site, :slug

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged

  # Carrierwave
  mount_uploader :archive, TestimonialUploader

  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :title, :presence => true
  validates :archive, :presence => true

  # Translate
  translates :title, :descricao
end
