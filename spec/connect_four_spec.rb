require './connect_four'

describe ConnectFour do
  describe "#display_board" do
    it "Display empty board" do
      test = ConnectFour.new
      game_board = [[" ", " ", " ", " ", " ", " ", " "], 
                    [" ", " ", " ", " ", " ", " ", " "], 
                    [" ", " ", " ", " ", " ", " ", " "], 
                    [" ", " ", " ", " ", " ", " ", " "], 
                    [" ", " ", " ", " ", " ", " ", " "], 
                    [" ", " ", " ", " ", " ", " ", " "]]
      expect(test.display_board).to eql(game_board)
    end
  end
end

