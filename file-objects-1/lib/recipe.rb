class Recipe
  attr_accessor :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(path)
    file = File.read(path)
    date_hash = JSON.parse(file)
    # title, description, ingredients, cook_time, featured
    # p date_hash.fetch('title')
    # p date_hash['description'.to_sym]
    # p date_hash['ingredients'.to_sym]
    # p date_hash['cook_time'.to_sym]
    # p date_hash['featured'.to_sym]

    obj = new(title: date_hash.fetch('title'), description: date_hash['description'], ingredients: date_hash['ingredients'],
              cook_time: date_hash['cook_time'], featured: date_hash['featured'])
  end
end
