require 'tdd'
require 'rspec'

describe Array do
    describe '#uniq' do
        it 'returns an array' do
            expect([1, 2, 1, 3, 3].uniq).to be_a_kind_of(Array)
        end
    end
end


# describe "#mix!" do
#     it "shuffles the ingredient array" do
#       ingredients = ["chocolate", "flour", "egg", "sugar", "butter"]

#       ingredients.each do |ingredient|
#         brownie.add_ingredient(ingredient)
#       end

#       expect(brownie.ingredients).to eq(ingredients)
#       brownie.mix!
#       expect(brownie.ingredients).not_to eq(ingredients)
#       expect(brownie.ingredients.sort).to eq(ingredients.sort)
#     end
#   end


# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an array and return a new array.

