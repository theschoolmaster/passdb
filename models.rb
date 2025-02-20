require 'active_record'

class Password < ActiveRecord::Base
  has_many :records
  has_many :usernames, through: :records
  has_many :domains, through: :records
end

class Domain < ActiveRecord::Base
  has_many :records
  has_many :passwords, through: :records
  has_many :usernames, through: :records
end

class Username < ActiveRecord::Base
  has_many :records
  has_many :passwords, through: :records
  has_many :domains, through: :records
end

class Record < ActiveRecord::Base
  belongs_to :domain
  belongs_to :password
  belongs_to :username
end

