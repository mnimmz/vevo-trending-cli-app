module Trending_Module
  def self.trending_video
    @trending = VevoTrending::Trending.today

    @trending.each.with_index(1) do |video, i|
      puts "#{i}. #{video.title} - #{video.name}"
    end
  end

end
