class AgeCategory < ActiveRecord::Base
  has_and_belongs_to_many :ideas
end
