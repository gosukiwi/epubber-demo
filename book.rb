# frozen_string_literal: true

require "epubber"

current_dir = File.dirname(__FILE__)
cover_image = File.new "#{current_dir}/cover.jpg"
path = Epubber.generate(working_dir: current_dir) do |b|
  b.title "My First EPUB book"
  b.author "Ramirez, Federico"
  b.url "https://beezwax.net"

  b.cover do |c|
    c.file cover_image
  end

  b.introduction do |i|
    i.content "<p>This is an introduction.</p>"
  end

  b.chapter do |c|
    c.title "Chapter 1"
    c.content "<p>This is some content!</p>"
  end

  b.chapter do |c|
    c.title "Chapter 2"
    c.content "<p>Some more content this is.</p>"
  end
end

puts "Book generated in #{path}"
