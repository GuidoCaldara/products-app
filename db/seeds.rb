
categories = ["Electronic", "Clothes", "Books", "Movies", "Food"]

categories.each do |name|
  Category.create(name: name)
  # category = Category.new(name: name)
  # category.save
end
