# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Employee < ActiveRecord::Base
  attr_accessible :description, :image, :name, :post, :slug

  # friendly_id
  extend FriendlyId
  friendly_id :name, :use => :slugged
  
  # Carrierwave
  mount_uploader :image, EmployeeUploader
  
  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :name, :presence => true
  
  # Translate
  translates :name, :post, :description
end
