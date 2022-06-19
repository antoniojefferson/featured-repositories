require 'rails_helper'

RSpec.describe JsonHelper, type: :helper do
  let(:languages) { { 'JavaScript' => 5_955_822, 'HTML' => 119_951, 'CSS' => 63_657, 'C++' => 44_278, 'TypeScript' => 20_868, 'CoffeeScript' => 16_826, 'C' => 5_225, 'Shell' => 2_331, 'Python' => 259, 'Makefile' => 189 } }
  let(:empty_list) { [] }

  describe 'get_json_keys' do
    context 'when have a json' do
      it 'returns list' do
        expect(helper.get_json_keys(languages)).to eq(['JavaScript', 'HTML', 'CSS', 'C++', 'TypeScript', 'CoffeeScript', 'C', 'Shell', 'Python', 'Makefile'])
      end

      it 'returns empty list' do
        expect(helper.get_json_keys(empty_list)).to eq([])
      end
    end
  end

  describe 'get_percentage' do
    context 'when have a json' do
      it 'returns percentage' do
        expect(helper.get_percentage(languages, 'JavaScript')).to eq(95.38)
      end

      it 'returns 0 value' do
        expect(helper.get_percentage(empty_list, 'JavaScript')).to eq(0)
      end
    end
  end
end
