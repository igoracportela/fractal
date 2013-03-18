# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Category < ActiveRecord::Base
  attr_accessible :categorizable, :slug, :title

  # friendly_id
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  # Object list
  CLIENT = 1
  DOCUMENT = 2
  POLL = 3
  EVENT = 4
  EMPLOYEE = 5
  NEWS = 6
  PRODUCT = 7
  PROJECT = 8
  SERVICE = 9
  
  CATEGORIZABLES = {'Client' => 1, 'Document' => 2, 'Poll' => 3, 'Event' => 4, 'Employee' => 5, 'News' => 6, 'Product' => 7, 'Project' => 8, 'Service' => 9}
  
  # Scopes
  scope :to_clients, where(:categorizable => CLIENT)
  scope :to_documents, where(:categorizable => DOCUMENT)
  scope :to_polls, where(:categorizable => POLL)
  scope :to_events, where(:categorizable => EVENT)
  scope :to_funcionarios, where(:categorizable => EMPLOYEE)
  scope :to_news, where(:categorizable => NEWS)
  scope :to_produts, where(:categorizable => PRODUCT)
  scope :to_projects, where(:categorizable => PROJECT)
  scope :to_services, where(:categorizable => SERVICE)
  
  # Relationships
  has_and_belongs_to_many :clients
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :polls
  has_and_belongs_to_many :events
  has_and_belongs_to_many :employees
  has_and_belongs_to_many :news
  has_and_belongs_to_many :products
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :services
  
  # Validations
  validates :title, :presence => true
  validates :categorizable, :presence => true
  
  # Translate
  translates :title

  def title_categorizable
    CATEGORIZABLES.invert[self.categorizable]
  end
  
  def self.to_combobox
    valid_modules = Configuration.modules.map { |key, value| key if value }
    
    categorizables = []

    CATEGORIZABLES.each do |categorizable|
      categorizables << categorizable if valid_modules.include?(categorizable[0].parameterize.pluralize)
    end
         
    return categorizables
  end
end
