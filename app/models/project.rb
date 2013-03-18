# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Project < ActiveRecord::Base
  attr_accessible :description, :image, :site, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged

  # Carrierwave
  mount_uploader :image, ProjectUploader

  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :title, :presence => true
  
  # Scope
  default_scope order('created_at desc')
  scope :lasts, limit(3)
  scope :by_category, lambda {|category| joins(:categories).where("category_id = ?",category)}

  # Translate
  translates :title, :description, :site
  
end
