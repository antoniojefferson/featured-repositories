require 'rails_helper'

RSpec.describe JsonHelper, type: :helper do
  let(:languages) { {
    "JavaScript"    => 5955822,
    "HTML"          => 119951,
    "CSS"           => 63657,
    "C++"           => 44278,
    "TypeScript"    => 20868,
    "CoffeeScript"  => 16826,
    "C"             => 5225,
    "Shell"         => 2331,
    "Python"        => 259,
    "Makefile"      => 189
  } }
  let(:empty_list) { [] }

  describe 'get_json_keys' do

    context 'when have a json' do      
      it 'returns list' do
        expect(helper.get_json_keys(languages)).to eq(["JavaScript", "HTML", "CSS", "C++", "TypeScript", "CoffeeScript", "C", "Shell", "Python", "Makefile"])
      end

      it 'returns empty list' do
        expect(helper.get_json_keys(empty_list)).to eq([])
      end
    end
  end

  describe 'get_percentage' do

    context 'when have a json' do      
      it 'returns percentage' do
        expect(helper.get_percentage(languages, "JavaScript")).to eq(95.38)
      end

      it 'returns 0 value' do
        expect(helper.get_percentage(empty_list, "JavaScript")).to eq(0)
      end
    end
  end
end
