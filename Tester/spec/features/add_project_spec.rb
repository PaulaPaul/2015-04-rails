require "rails_helper"

describe "adding projects" do
  it "allows a user to create a project with no tasks" do
    visit new_project_path
    fill_in "Name", with: "The Big Project"
    click_on("Create Project")
    visit projects_path
    expect(page).to have_content("The Big Project")
  end
end