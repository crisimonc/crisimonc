class SlotMachine
  SYMBOLS = %w[joker start bell seven cherry]

  def score(reels)
    if reels[0] == reels[1] && reels[1] == reels[2]
      position = SYMBOLS.index(reels[0])
      total = 50 - position * 10
    elsif reels.uniq.length < reels.length
      result = reels.detect { |a| reels.count(a) > 1 }
      position = SYMBOLS.index(result)
      total = 25 - position * 5
    end
    total
  end
end

test = SlotMachine.new
p test.score(['star', 'star', 'joker'])
