class AddTestData < ActiveRecord::Migration
  def self.up
    Product.delete_all
    Product.create(:title => 'The Book of Books', 
      :description => 
      %{<p>
        This is the book to end all books!
        </p>},
      :image_url => 'http://www.forcefieldmagnets.com/catalog/images/cat_book.jpg',
      :price => 29.99)  
  end

  def self.down
    Product.delete_all
  end
end