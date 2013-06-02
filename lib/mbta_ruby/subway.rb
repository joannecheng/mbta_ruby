module MBTA
  class Subway
    def self.routes
      routes_url = 'http://realtime.mbta.com/developer/api/v1/routes'

      response = Typhoeus.get("#{routes_url}?api_key=#{API_KEY}").body
      routes_response = JSON.parse(response)
      routes_response['mode'].map do |routes|
        if routes['mode_name'] == 'Subway'
          routes['route'].map do |route|
            MBTA::Subway.new route
          end
        end
      end.flatten.compact
    end

    def initialize(options={})
      options.keys.each do |key|
        options[(key.to_sym rescue key) || key] = options.delete(key)
      end
      @route_name ||= options[:route_name]
      @route_id ||= options[:route_id]
    end
  end
end
