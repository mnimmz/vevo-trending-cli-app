# CLI Controller

class VevoTrending::CLI

  def call
    trending_videos
    main_menu
  end

  def trending_videos
    puts "Today's Trending Videos on Vevo:"

    @trending = VevoTrending::Trending.today

    (0..9).each.with_index(1) do |i|
      puts "#{i + 1}. #{@trending[i].title} - #{@trending[i].name}"
    end

  end

  def all_videos
    @trending.each.with_index(1) do |video, i|
      puts "#{i}. #{video.title} - #{video.name}"
    end
  end

  def main_menu
    input = nil

    while input != "exit"
      puts "Type more to view more videos, then enter the number of the videos you want to know more about. Type back to see all videos or type exit:"
      input = gets.strip.downcase

      if input == "more"
        @trending.each.with_index(1) do |video, i|
          if i >= 11
            puts "#{i}. #{video.title} - #{video.name}"
          end
        end

      elsif input.to_i > 0 && input.to_i < 21
          videos = @trending[input.to_i - 1]
          puts "Title: #{videos.title} by #{videos.name}\nLikes: #{videos.likes} likes\nViews: #{videos.views} views\n#{videos.director}"

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
    puts "Come back tomorrow to see the latest trending videos! Goodbye!"
  end

end
