# Stopped video at 36:42
require 'open-uri'

class YoutubeTrending::Trending
  attr_accessor :name, :channel, :views, :published, :description
  def self.today

    self.scrape_videos

    # Scrape YouTube Trending page and return top 4 videos


  end

  def self.scrape_videos
    videos = []
    youtube = Nokogiri::HTML(open('https://www.youtube.com/feed/trending'))
    # Go to YouTube Trending page, find videos
    # Extract the content
    # Instantiate videos
    youtube.search("div#grid-container.style-scope ytd-expanded-shelf-contents-renderer")
    binding.pry
    # videos

  end
end
