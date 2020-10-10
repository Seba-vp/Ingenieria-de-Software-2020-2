require 'rails_helper'


RSpec.describe "Feedbacks", type: :request do
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
