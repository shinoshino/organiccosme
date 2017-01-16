    require 'net/http'
    require 'uri'
    require 'json'

class Event < ActiveRecord::Base
  def self.create_events_from_api
    url = URI.parse(URI.escape("https://www.street-academy.com/api/v1/events?category=19"))
    res = Net::HTTP.start(url.host, url.port, use_ssl: true){|http|
        http.get(url.path + "?" + url.query);
    }
    obj = JSON.parse(res.body)

    obj['events'].each do | event |
      Event.create(title: event['title'])
    end
  end
end
