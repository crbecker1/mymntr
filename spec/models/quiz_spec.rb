require 'rails_helper'

RSpec.describe Quiz, type: :model do
  let(:current_user) { create(:account) }
  let(:quiz) {Quiz.create(name: "Quiz 1", account: current_user)}

  it 'has a name' do
    expect(quiz.name).to eq "Quiz 1"
  end

  it 'belongs to an account' do
    expect(quiz.account).to eq current_user
  end
end
