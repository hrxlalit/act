require 'test_helper'
require 'generators/my_g/my_g_generator'

class MyGGeneratorTest < Rails::Generators::TestCase
  tests MyGGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
