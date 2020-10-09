require 'rails_helper'

RSpec.describe "Interesteds", type: :request do
    describe "/new" do #CREATE
        it "should return a successful request" do
            get "/interesteds/new"
            expect(response).to have_http_status(:ok)
        end

        it "should render the new view" do
            get "/interesteds/new" 
            expect(response).to render_template(:new)
        end
    end
    describe  "/index" do #READ
        it "should return a succesful request" do
            get "/interesteds/index"
            expect(response).to have_http_status(:ok)
        end
        it "should render the new view" do
            get "/interesteds/index"
            expect(response).to render_template(:index)
        end
    end

end

