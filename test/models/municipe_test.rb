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

  # test "the truth" do
  #   assert true
  # end
end
