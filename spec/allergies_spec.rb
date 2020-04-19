RSpec.describe Tools::Allergies do
  describe "determine whether or not they're allergic to a given item" do
    it "matches the allergen with the score" do
      allergies = Tools::Allergies.new(1)
      expect(allergies.allergic_to?('eggs')).to be true
    end

    it "does not match the allergen with the score" do
      allergies = Tools::Allergies.new(1)
      expect(allergies.allergic_to?('peanuts')).to be false
    end

    it "does match the allergen with the score" do
      allergies = Tools::Allergies.new(2)
      expect(allergies.allergic_to?('peanuts')).to be true
    end

    # it "drn drn" do
    #   allergies = Tools::Allergies.new(3)
    #   expect(allergies.allergic_to?('peanuts', 'eggs')).to be true
    #   #  expect(allergies.allergic_to?('eggs')).to be true
    # end

    describe 'List all the allergens' do
      it 'you alergica to all allergens' do
        allergies = Tools::Allergies.new(511)
        expected = %w[eggs peanuts shellfish strawberries tomatoes
                      chocolate pollen cats]
      end
    end
  end
end
