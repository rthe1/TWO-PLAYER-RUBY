class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts "New Game Started. Welcome #{@player_1.name} and #{@player_2.name}"
    next_round
  end

  def next_round
    @player_1.new_prompt
    check_score
    @player_2.new_prompt
    check_score
    show_stats
    puts '---------NEW-TURN---------'
    next_round
  end

  def check_score
    if @player_1.is_dead
      winner(@player_2)
    elsif @player_2.is_dead
      winner(@player_1)
    end

  def show_stats
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def winner(player)

    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  
  end

 
end