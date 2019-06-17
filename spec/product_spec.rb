
require 'rails_helper.rb'
RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should have a name' do
      @newCategory = Category.new name:'Sports'
      @newPro = Product.new name:'new',price:129.99, quantity:15,category:@newCategory
      expect(@newPro.name).to be_present
       
    end
    it 'should have a name' do
      @newCategory = Category.new name:'Sports'
      @newPro = Product.new name:'new',price:129.99, quantity:15,category:@newCategory
      expect(@newPro.price).to be_present  
      
    end
    it 'should have a name' do
      @newCategory = Category.new name:'Sports'
      @newPro = Product.new name:'new',price:129.99, quantity:15,category:@newCategory
      expect(@newPro.quantity).to be_present  
      
    end
    it 'should have a name' do
      @newCategory = Category.new name:'Sports'
      @newPro = Product.new name:'new',price:129.99, quantity:15,category:@newCategory
      expect(@newPro.category).to be_nil   
    end

  end
end