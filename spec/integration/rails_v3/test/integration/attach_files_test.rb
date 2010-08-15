require 'test_helper'

class AttachFilesTest < ActionController::IntegrationTest

  test "should attach file and upload" do
    visit new_file_path
    attach_file "file", "#{Rails.root}/test/support/test.csv"
    click_button "Upload"
    assert_contain("File:test.csv")
  end

end