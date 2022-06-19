require 'rails_helper'

RSpec.describe JsonHelper, type: :helper do
  let(:languages) { { 'Ruby' => 33_053_955, 'C' => 14_228_738, 'C++' => 1_557_310, 'Yacc' => 1_151_529, 'Makefile' => 977_837, 'Rust' => 515_001, 'M4' => 180_818, 'Roff' => 116_491, 'Python' => 44_062, 'GDB' => 36_134, 'Ragel' => 30_047, 'HTML' => 21_096, 'CSS' => 17_039, 'Assembly' => 16_488, 'Shell' => 15_475, 'JavaScript' => 14_769, 'Batchfile' => 12_158, 'Emacs Lisp' => 4_051, 'sed' => 1_953, 'Scheme' => 557, 'Raku' => 497, 'Perl' => 187, 'Dockerfile' => 81 } }
  let(:empty_list) { [] }

  describe 'get_json_keys' do
    context 'when have a json' do
      it 'returns list' do
        expect(helper.get_json_keys(languages)).to eq(['Ruby', 'C', 'C++', 'Yacc', 'Makefile', 'Rust', 'M4', 'Roff', 'Python', 'GDB', 'Ragel', 'HTML', 'CSS', 'Assembly', 'Shell', 'JavaScript', 'Batchfile', 'Emacs Lisp', 'sed', 'Scheme', 'Raku', 'Perl', 'Dockerfile'])
      end

      it 'returns empty list' do
        expect(helper.get_json_keys(empty_list)).to eq([])
      end
    end
  end

  describe 'get_percentage' do
    context 'when have a json' do
      it 'returns percentage' do
        expect(helper.get_percentage(languages, 'Ruby')).to eq(63.3)
      end

      it 'returns 0 value' do
        expect(helper.get_percentage(empty_list, 'Ruby')).to eq(0)
      end
    end
  end
end
