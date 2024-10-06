require "application_system_test_case"

class IssuesTest < ApplicationSystemTestCase
  setup do
    @issue = issues(:one)
  end

  test "visiting the index" do
    visit issues_url
    assert_selector "h1", text: "Issues"
  end

  test "should create issue" do
    visit issues_url
    click_on "New issue"

    fill_in "Link", with: @issue.link
    fill_in "Name", with: @issue.name
    fill_in "Podcast", with: @issue.podcast
    fill_in "References", with: @issue.references
    click_on "Create Issue"

    assert_text "Issue was successfully created"
    click_on "Back"
  end

  test "should update Issue" do
    visit issue_url(@issue)
    click_on "Edit this issue", match: :first

    fill_in "Link", with: @issue.link
    fill_in "Name", with: @issue.name
    fill_in "Podcast", with: @issue.podcast
    fill_in "References", with: @issue.references
    click_on "Update Issue"

    assert_text "Issue was successfully updated"
    click_on "Back"
  end

  test "should destroy Issue" do
    visit issue_url(@issue)
    click_on "Destroy this issue", match: :first

    assert_text "Issue was successfully destroyed"
  end
end
