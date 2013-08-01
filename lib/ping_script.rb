require 'net/http'
require 'uri'

def ping url
  beginning_time = Time.now
  res = Net::HTTP.get_response(URI(url))
  Site.where(:url => url).each do |site|
    Request.create :url => "#{site.url}", :interval => "#{site.interval}", :code => "#{res.code}", :message => "#{res.message}", :response_time => "#{(Time.now - beginning_time)}", :site_id => "#{site.id}" 
  end
end

# Each instance of site, http request and store data in DB
  Site.where(:on_off => true).all.map(&:url).uniq.each do |url|
    ping url
  end

