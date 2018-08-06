require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Stupid Coaching"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "return to question page with back button" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    click_on "Ask a new question"
    take_screenshot

    assert_current_path(/\/ask/)
    # expect(page).to have_current_path(ask_path)
  end

end
