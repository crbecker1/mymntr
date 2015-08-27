require 'rails_helper'

RSpec.describe Quiz, type: :model do
  let(:current_user) { create(:account) }
  let(:quiz) { Quiz.create(name: "Quiz 1", account: current_user) }

  it 'has a name' do
    expect(quiz.name).to eq "Quiz 1"
  end

  it 'belongs to an account' do
    expect(quiz.account).to eq current_user
  end

  context "result" do
    it 'picks badass if you select all true ("A")' do
      quiz = Quiz.create(
        account: create(:account),
        question_1: true,
        question_2: true,
        question_3: true,
        question_4: true,
        question_5: true,
        question_6: true,
        question_7: true,
        question_8: true,
        question_9: true,
        question_10: true,
        question_11: true,
        question_12: true
      )
      expect(quiz.result).to eq(:badass)
    end

    it 'picks cant_touch if you select all false ("B")' do
      quiz = Quiz.create(
        account: create(:account),
        question_1: false,
        question_2: false,
        question_3: false,
        question_4: false,
        question_5: false,
        question_6: false,
        question_7: false,
        question_8: false,
        question_9: false,
        question_10: false,
        question_11: false,
        question_12: false
      )
      expect(quiz.result).to eq(:cant_touch)
    end

    it "defaults to badass when no selections are made" do
      quiz = Quiz.create(
        account: create(:account),
        question_1: nil,
        question_2: nil,
        question_3: nil,
        question_4: nil,
        question_5: nil,
        question_6: nil,
        question_7: nil,
        question_8: nil,
        question_9: nil,
        question_10: nil,
        question_11: nil,
        question_12: nil
      )
      expect(quiz.result).to eq(:badass)
    end
  end
end
