# CLI Controller
class YoutubeTrending::CLI

  def call
    puts "Today's Trending YouTube Videos:"
    trending_videos
    main_menu
    exit_videos
  end

  def trending_videos
    puts <<~HEREDOC
      1.	Coachella 2018 Live Channel 1 – Coachella – 1M Views
      2.	Meet the Parents Cold Open – SNL – Saturday Night Live – 1.9M Views
      3.	Incredibles 2 Official Trailer – Pixar – 2M Views
      4.	The Weeknd – Call Out My Name (Official Video) – 11M Views
    HEREDOC
    # @trending = YoutubeTrending::Trending.today
  end

  def main_menu
    input = nil
    while input != "exit"
      puts "Enter the number of the video you want to know more about or type back to see all videos or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on video 1..."
      when "2"
        puts "More info on video 2..."
      when "3"
        puts "More info on video 3..."
      when "4"
        puts "More info on video 4..."
      when "back"
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
