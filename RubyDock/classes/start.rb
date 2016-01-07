class Start

  def initialize
    puts "Let's start a Docker container"
  end

  def choose_container
    a = get_images
    good = false
    while !good
      begin
        puts "Please choose a container # to start:"
        a.each_index do |i|
          puts "#{i}) #{a[i]}"
        end
        puts "\n\n"
        pick = Integer(gets)
        good = true
      rescue ArgumentError => e
        ap "Pick must be a number", color: {string: :red}
        next
      end
    end
  end


  def get_images
    a = `sudo docker images | awk '{ print $1 }'`.split(/\n/)
    a.shift
    a = [a] if a.is_a? String
    return a
  end

end


# start = true
# puts "This is your only image\n #{a}"
# puts "Should I start it? Y/n"
# d = gets
# start = false unless g.include?(d)
# if !start
#   getimage = true
#   puts "Would you like to pull a different image? Y/n"
#   res = gets
#   getimage = false unless g.include?(res)
#   puts "What image should i search for?"
#   image = gets.chomp
#   status = system "sudo docker pull #{image}"
# end
# if status == 0
#   go = true
#   puts "Should I start this image? Y/n"
#   start = gets
#   go = false unless g.include?(start)
#   exit if !start
#   system "sudo docker run -d #{image}"
# end
