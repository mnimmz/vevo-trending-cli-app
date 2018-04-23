# Stopped video at 36:42
require 'open-uri'

class VevoTrending::Trending
  attr_accessor :title, :name
  def self.today
    # Scrape YouTube Trending page and return top 20 videos
    self.scrape_videos
  end

  def self.scrape_videos
    videos = []
    homepage = Nokogiri::HTML(open('https://www.vevo.com/'))

    homepage.css("div.horiz-scroll-feed.feedV2-container.service-top-videos").each do |card|
      card.css("div.feed-item-info").each do |artist|
        video = self.new
        video.title = artist.css("a.feed-item-subtitle h3").text
        video.name = artist.css("a.feed-item-title").text
        videos << video
      end
    end
    videos
  end
end
