# Stopped video at 36:42
require 'nokogiri'
require 'open-uri'

class YoutubeTrending::Trending
  attr_accessor :name, :channel, :views, :published, :description
  def self.today

    self.scrape_videos

    # Scrape YouTube Trending page and return top 4 videos


  end

  def self.scrape_videos
    videos = []
    # Go to YouTube Trending page, find videos
    # Extract the content
    # Instantiate videos

    videos

  end
end
