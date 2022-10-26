# frozen_string_literal: true

# For displaying data
module Outputs
  def display_title
    puts "\nGUESS THE SECRET CODE.\ncolors: ROYGBIV"
    display_row
  end

  def display_attempts(count)
    puts "No. of attempts: #{count}\n "
  end

  def display_row
    puts "\nslots: | #{slots[0]} | #{slots[1]} | #{slots[2]} | #{slots[3]} |\n "
  end

  def display_feedback
    smaller_slots.map! { |key| Constants::FEEDBACK[key] }
    puts "feedback: | #{smaller_slots[0]} | #{smaller_slots[1]} | #{smaller_slots[2]} | #{smaller_slots[3]} |\n "
  end

  def display_guesses
    puts 'history: '
    puts guesses_and_feedbacks
  end
end
