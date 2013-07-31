require 'net/http'
require 'uri'

# Each instance of site, http request and store data in DB
  Site.all.each do |site|
    if site.on_off == true 
      if ( ( Time.now.to_i - site.created_at.to_time.to_i ) / site.interval ).integer?
        beginning_time = Time.now
        res = Net::HTTP.get_response(URI(site.url))
        end_time = Time.now
        Request.create :url => "#{site.url}", :interval => "#{site.interval}", :code => "#{res.code}", :message => "#{res.message}", :response_time => "#{(end_time - beginning_time)}", :site_id => "#{site.id}" 
      end
    end
  end