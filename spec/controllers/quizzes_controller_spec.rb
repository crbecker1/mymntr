require 'rails_helper'

RSpec.describe QuizzesController, type: :controller do
  let(:valid_attributes) {
    { name: "quiz 1" }
  }

  before do
    allow(ResultMailer).to receive(:result_email).
        and_return(double("ResultMailer", :deliver_later => true))
  end

  describe "GET #new" do
    it "assigns a new quiz as @quiz" do
      get :new
      expect(assigns(:quiz)).to be_a_new(Quiz)
    end
  end

  describe "POST #create" do
    context "when there is no current user" do
      before do
        allow(controller).to receive(:current_user) { nil }
      end
      it "saves the quiz params to the session" do
        post :create, { :quiz => valid_attributes }
        expect(session[:quiz]).to include valid_attributes
      end
      it "redirects to sign up" do
        post :create, { :quiz => valid_attributes }
        expect(response).to redirect_to new_account_path
      end
    end

    context "when there is a signed in user" do
      before do
        allow(controller).to receive(:current_user) { create(:account) }
      end
      context "with valid params" do
        it "creates a new Quiz" do
          expect {
            post :create, { :quiz => valid_attributes }
          }.to change(Quiz, :count).by(1)
        end

        it "assigns a newly created quiz as @quiz" do
          post :create, { :quiz => valid_attributes }
          expect(assigns(:quiz)).to be_persisted
        end

        it "redirects to the results" do
          post :create, { :quiz => valid_attributes }
          expect(response).to redirect_to(my_account_path)
          expect(assigns(:result)).to eq(:badass)
        end
      end
    end
  end
end
