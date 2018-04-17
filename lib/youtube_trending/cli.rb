# CLI Controller
class YoutubeTrending::CLI
  def call

    trending_videos
    main_menu
    exit_videos
  end

  def trending_videos
    puts "Today's Trending YouTube Videos:"

    @trending = YoutubeTrending::Trending.today

    @trending.each.with_index(1) do |video, i|
      puts "#{i}. #{video.name} - #{video.channel} - #{video.views}"
    end
  end

  def main_menu
    input = nil
    while input != "exit"
      puts "Enter the number of the video you want to know more about or type back to see all videos or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        videos = @trending[input.to_i - 1]
        puts "#{videos.name} - #{videos.channel} - #{videos.views} - #{videos.published} - #{videos.description}"
      elsif input == "back"
        trending_videos
      else
        puts "Invalid entry. Please type back or exit."
      end

    end
  end

  def exit_videos
    puts "Come back tomorrow to see the latest trending videos! Goodbye! "
  end

end
