# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class New < ActiveRecord::Base
  attr_accessible :content, :image, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged

  # Carrierwave
  mount_uploader :image, NewsUploader

  # Relationships
  has_and_belongs_to_many :categories
  
  # Validations
  validates :title, :presence => true
  validates :content, :presence => true
  
  # Scopes
  default_scope order('created_at desc')
  scope :last, limit(5).order('created_at desc')
  scope :by_category, lambda {|categoria| joins(:categorias).where("categoria_id = ?",categoria)}

  # Translate
  translates :title, :content
end
