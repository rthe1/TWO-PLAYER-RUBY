class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def new_prompt
    new_prompt = Prompt.new
    new_prompt.ask(name)
    print '> '
    @userchoice = $stdin.gets.chomp
    if new_prompt.check_answer(@userchoice.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      lose_life
    end
  end
end