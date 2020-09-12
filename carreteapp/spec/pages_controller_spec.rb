require_relative "../app/controllers/pages_controller.rb"

RSpec.describe PagesController do
    describe "#saludar" do
        let(:pagina) do
            pagina = PagesController.new
        end

        it "dice hola" do
            expect(pagina.saludar).to eq("Hello world 2!")
        end
    end

    describe "#multiplicar" do
        let(:pagina) do
            pagina = PagesController.new
        end

        it "multiplicar por 2 el numero dado" do
            expect(pagina.multiplicar(2)).to eq(4)
        end
    end
end