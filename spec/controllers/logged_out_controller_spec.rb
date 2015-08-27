require 'rails_helper'

describe LoggedOutController do
  it "should get index" do
    get :index
    expect(response).to be_success
  end

  it "should show the count of quizzes taken" do
    create :quiz
    create :quiz

    get :index
    expect(assigns[:count]).to eq 2
  end
end
