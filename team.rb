class Team
  attr_accessor :name, :win, :lose, :draw
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  def calc_win_rate
    return win.to_f/(win.to_f+lose.to_f)
  end
  def show_team_result
    puts self.name.to_s + "の2020年の成績は" + self.win.to_s + "勝" + self.lose.to_s + "敗" + self.draw.to_s + "分、勝率は" + (calc_win_rate).to_s + "です。"
  end
end
team = Team.new("Giants", 67, 45, 8)
team.show_team_result
team = Team.new("Tigers", 60, 53, 7)
team.show_team_result
team = Team.new("Dragons", 60, 55, 5)
team.show_team_result
team = Team.new("BayStars", 56, 58, 6)
team.show_team_result
team = Team.new("Carp", 52, 56, 12)
team.show_team_result
team = Team.new("Swallows", 41, 69, 10)
team.show_team_result
