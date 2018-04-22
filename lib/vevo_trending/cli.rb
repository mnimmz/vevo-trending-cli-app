# CLI Controller
class VevoTrending::CLI
  def call

    trending_videos
    main_menu
  end

  def trending_videos
    puts "Today's Trending Videos on Vevo:"

    @trending = VevoTrending::Trending.today

    @trending.each.with_index(1) do |video, i|
      if i < 11
        puts "#{i}. #{video.title} - #{video.name}"
      end

    end
  end

  def all_videos
    @trending = VevoTrending::Trending.today

    @trending.each.with_index(1) do |video, i|
      puts "#{i}. #{video.title} - #{video.name}"
    end
  end

  def main_menu
    input = nil

    while input != "exit"
      puts "Type more to view more videos, then enter the number of the video you want to know more about. Type back to see all videos or type exit:"
      input = gets.strip.downcase

      if input == "more"
        @trending.each.with_index(1) do |video, i|
          if i >= 11
            puts "#{i}. #{video.title} - #{video.name}"
          end
        end

      elsif input.to_i > 0
          videos = @trending[input.to_i - 1]
          puts "#{videos.title} by #{videos.name}"

      elsif input == "back"
        all_videos

      elsif input == "exit"
        exit_videos

      else
        puts "Invalid entry. Please type back or exit."
      end
    end
  end

  def exit_videos
    puts "Come back tomorrow to see the latest trending videos! Goodbye! "
  end

end
