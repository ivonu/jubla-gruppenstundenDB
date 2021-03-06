class Filter
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :method_category_ids
  attr_accessor :activity_category_ids
  attr_accessor :season_category_ids
  attr_accessor :location_category_ids
  attr_accessor :title
  attr_accessor :material
  attr_accessor :content
  attr_accessor :age_min
  attr_accessor :age_max
  attr_accessor :group_size_min
  attr_accessor :group_size_max
  attr_accessor :boys
  attr_accessor :girls

  def method_category_ids= (ids)
    @method_category_ids = ids.reject(&:blank?).map(&:to_i)
  end
  def activity_category_ids= (ids)
    @activity_category_ids = ids.reject(&:blank?).map(&:to_i)
  end
  def season_category_ids= (ids)
    @season_category_ids = ids.reject(&:blank?).map(&:to_i)
  end
  def location_category_ids= (ids)
    @location_category_ids = ids.reject(&:blank?).map(&:to_i)
  end

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end