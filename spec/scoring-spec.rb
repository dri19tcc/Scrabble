require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "if it exists" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score(word)" do
    it "if it exists" do
      "Scoring#score(word).wont_be_nil"
    end

    describe "Scoring#score(word)" do
      TEST_CASES = {
        "cat" => 5,
        "CAT" => 5,
        "BOX" => 12,
        "box" => 12,
        "googles" => 59,
        "GOOgles" => 59
        # "m" => 3,
        # "f" => 4,
        # "v" => 4,
        # "k" => 5,
        # "j" => 8,
        # "z" => 10
      }

      TEST_CASES.each do |letters, score|
        it "Does it assign a score number to each letter" do
          Scoring.score(letters).must_equal(score)
        end
      end
    end
  end
end
