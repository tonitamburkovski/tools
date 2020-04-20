RSpec.describe Tools::Pokemon do
  it 'The damage of the move ("fire", "water", 100, 100) is 25' do
    pokemon = Tools::Pokemon.new(['fire', 'water', 100, 100])
    expect(pokemon.damage).to eq(25)
  end

  it 'The damage of the move ("grass", "fire", 35, 5) is 175' do
    pokemon = Tools::Pokemon.new(['grass', 'fire', 35, 5])
    expect(pokemon.damage).to eq(175)
  end

  it 'The damage of the move ("electric", "fire", 100, 100) is 50' do
    pokemon = Tools::Pokemon.new(['electric', 'fire', 100, 100])
    expect(pokemon.damage).to eq(50)
  end
end
