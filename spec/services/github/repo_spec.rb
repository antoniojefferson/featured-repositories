require 'rails_helper'

RSpec.describe Github::Repo, vcr: true do
  let!(:language) { { language: 'ruby', full_name: 'ruby' } }
  let!(:api) { ENV.fetch('API_GITHUB') }

  describe '.search' do
    it 'call the search with valid data' do
      expect(described_class.search(language).class).to eq(Hash)
      expect(described_class.search(language)['name']).to eq('ruby')
      expect(described_class.search(language)['full_name']).to eq('ruby/ruby')
    end

    it 'call the search with invalid data' do
      expect(described_class.search({ language: '', full_name: '*cvf4353' })).to eq(nil)
    end
  end

  describe '.current_tag' do
    it 'getting data from a valid url' do
      expect(described_class.current_tag("#{api}/repos/ruby/ruby/tags")).not_to eq('')
    end

    it 'getting data from a invalid url' do
      expect(described_class.current_tag('')).to eq('')
    end
  end

  describe '.get_languages' do
    it 'getting data from a valid url' do
      expect(described_class.get_languages("#{api}/repos/ruby/ruby/languages").class).to eq(Hash)
    end

    it 'getting data from a invalid url' do
      expect(described_class.get_languages('')).to eq('')
    end
  end
end
