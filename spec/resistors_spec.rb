#RSpec.describe Tools::Resistors do
#  describe "printing resistors ohms" do
#    it 'ignore more than two colors for input' do
#      resistor  = Tools::Resistors.new(['Orange','Blue','Black'])
#      expected(resistor.output).to eq(36)
#    end
#
#    it 'ignore Gold and Silver as input' do
#      resistor = Tools::Resistors.new(['Gold', 'Silver'])
#      expected(resistor.output).to eq(0)
#    end
#
#    describe 'Full resistor specification' do
#      it 'present the specification' do
#        resistor = Tools::Resistors.new(['Blue', 'Yellow', 'Red', 'Gold'])
#        expected = '6400 ohms +-5%'
#      end
#    end
#  end
#end
#