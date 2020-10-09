require 'rails_helper'

RSpec.describe "Feedbacks", type: :request do
<<<<<<< HEAD
    describe "/new" do #CREATE
        it "should return a successful request" do
            get "/feedbacks/new"
            expect(response).to have_http_status(:ok)
        end

        it "should render the new view" do
            get "/feedbacks/new" 
            expect(response).to render_template(:new)
        end
    end
    describe  "/index" do #READ
        it "should return a succesful request" do
            get "/feedbacks/index"
            expect(response).to have_http_status(:ok)
        end
        it "should render the new view" do
            get "/feedbacks/index"
            expect(response).to render_template(:index)
        end
    end
end

=======

  describe "GET /new" do
    it "returns http success" do
      get "/feedbacks/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/feedbacks/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/feedbacks/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/feedbacks/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/feedbacks/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/feedbacks/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/feedbacks/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
>>>>>>> origin
