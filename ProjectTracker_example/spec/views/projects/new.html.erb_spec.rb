require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :description => "MyText",
      :status => "MyString",
      :manager => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_status[name=?]", "project[status]"

      assert_select "input#project_manager[name=?]", "project[manager]"
    end
  end
  
  it "creates a new project using Capybara", js: true do
    visit new_project_path
    fill_in "Name", with: "Paula's Project"
    fill_in "Description", with: "A really cool project"
    fill_in "Status", with: "Complete"
    fill_in "Manager", with: "Paula"
    click_on "Create Project"
    visit projects_path
    expect(page).to have_content("Paula")
  end
  
end
