require 'minitest/autorun'
require_relative 'cryptographer'

class EncryptionEngineTest < Minitest::Test
  def test_it_encrypts_all_lowercase
    engine = EncryptionEngine.new
    output = engine.encrypt("mymessage")
    assert_equal "zlzrffntr", output
  end
  def test_it_encrypts_camelcase
    engine = EncryptionEngine.new
    output = engine.encrypt("MyMessage")
    assert_equal "ZlZrffntr", output
  end
  # def test_it_encrypts_using_rot13
  #   engine = EncryptionEngine.new
  #   output = engine.encrypt("My Message")
  #   assert_equal "Zl Zrffntr", output
  # end
end