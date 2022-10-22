require "test_helper"

class MunicipeTest < ActiveSupport::TestCase

 test "municipe attributes must not be empty" do
    municipe = Municipe.new
    assert municipe.invalid?
    assert municipe.errors[:nome].any?
    assert municipe.errors[:cpf].any?
    assert municipe.errors[:cns].any?
    assert municipe.errors[:email].any?
    assert municipe.errors[:nascimento].any?
    assert municipe.errors[:telefone].any?
    assert municipe.errors[:image_url].any?
    assert municipe.errors[:status].any?
    
  end

   def new_municipe(image_url)
    Municipe.new(nome:       "Fulano",
                cpf: 00000000000,
                cns: 0000000,
                email: @teste,
                nascimento: 00/00/0000,
                telefone: 91999999999,
                image_url:   image_url)
  end

  test "image url" do
    ok = %w{fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    end

  # test "the truth" do
  #   assert true
  # end
end
