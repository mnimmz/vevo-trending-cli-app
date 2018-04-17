# Stopped video at 36:42
class YoutubeTrending::Trending
  attr_accessor :name, :channel, :views, :published, :description
  def self.today
    # I should return a bunch of instances of Trending
    # puts <<~HEREDOC
    #   1.	Coachella 2018 Live Channel 1 – Coachella – 1M Views
    #   2.	Meet the Parents Cold Open – SNL – Saturday Night Live – 1.9M Views
    #   3.	Incredibles 2 Official Trailer – Pixar – 2M Views
    #   4.	The Weeknd – Call Out My Name (Official Video) – 11M Views
    # HEREDOC

    video_1 = self.new
    video_1.name = "Coachella 2018 Live Channel 1"
    video_1.channel = "Coachella"
    video_1.views = "1M Views"
    video_1.published = "2 hours ago"
    video_1.description = "Coachella live! See the greatest artists of all time\nperform at the greatest concert in the world!"

    video_2 = self.new
    video_2.name = "The Weeknd – Call Out My Name (Official Video)"
    video_2.channel = "The Weekend"
    video_2.views = "11M Views"
    video_2.published = "3 days ago"
    video_2.description = "Call Out My Name (Official Video) Taken from the album\nMy Dear Melancholy, http://theweeknd.co/mdmYD\nConnect with The Weeknd: http://www.facebook.com/theweeknd"

    [video_1, video_2]
  end
end
