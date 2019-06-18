
require 'rails_helper.rb'
RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should have a name' do
      @newCategory = Category.new name:'Sports'
      
      expect(@newCategory.name).to be_present
      @newCategory.errors.full_messages
       
    end
    it 'should have a name' do

      @newPro = Product.new name:'new'
      expect(@newPro.name).to be_present
      @newPro.errors.full_messages
       
    end
    
    it 'should have a price' do
      
      @newPro = Product.new price:129.99
      expect(@newPro.price).to be_present  
      @newPro.errors.full_messages
    end
    it 'should have a quantity' do
      @newPro = Product.new quantity:15
      expect(@newPro.quantity).to be_present  
      @newPro.errors.full_messages
    end
    it 'should have a category' do
      @newCategory = Category.new name:'Sports'
      @newPro = Product.new category:@newCategory
      expect(@newPro.category).to be_present 
      @newPro.errors.full_messages  
    end

  end
end