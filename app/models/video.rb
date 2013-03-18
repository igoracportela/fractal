# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Video < ActiveRecord::Base
  attr_accessible :description, :name, :slug, :url

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged

  # Validations
  validates :title, :presence => true
  validates :url, :presence => true

  # Translate
  translates :title, :description
end
