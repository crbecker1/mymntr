require 'rails_helper'

describe LoggedInController do
  let(:account) { Account.create!(email: 'bob@example.com', password: 'password') }
  let(:quiz) { account.create_quiz(name: "my quiz")}

  it "should get landing" do
    login_user account
    get :landing
    assert_response :success
  end

  it "should set @quiz to the current user's quiz" do
    login_user account
    get :landing
    expect(assigns(:quiz)).to eq account.quiz
  end
end
