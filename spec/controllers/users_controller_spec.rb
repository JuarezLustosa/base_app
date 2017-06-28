require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let!(:user) { create(:user) }
  let!(:users) { user }

  describe "GET #index" do
    it "assigns all users" do 
      get :index
      expect(assigns(:users)).to match_array(users)
    end
  end
end
