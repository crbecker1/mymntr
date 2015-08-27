require 'rails_helper'

RSpec.describe QuizzesController, type: :controller do
  describe "GET #new" do
    it "assigns a new quiz as @quiz" do
      get :new
      expect(assigns(:quiz)).to be_a_new(Quiz)
    end
  end
end
