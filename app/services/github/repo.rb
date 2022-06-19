require 'net/http'

module Github
  class Repo
    def self.search(object)
      language = object[:language]
      framework = object[:framework]

      result = response("#{ENV.fetch('API_GITHUB')}/search/repositories?q=#{framework}
      +language:#{language}&sort=stars&order=desc&per_page=1")

      return nil if result['items'].blank?

      result['items'].first
    end

    def self.current_tag(url)
      return '' if url.blank?

      result = response(url)

      return '' if result.class.instance_of?(Hash) || result.first['name'].present? == false

      result.first['name']
    end

    def self.get_languages(url)
      return '' if url.blank?

      result = response(url)

      return '' if result['message'].present?

      result
    end

    def self.response(url)
      ActiveSupport::JSON.decode(
        Net::HTTP.get(URI(url))
      )
    end
  end
end
