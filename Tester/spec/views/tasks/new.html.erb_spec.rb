require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :title => "MyString",
      :size => 1,
      :project => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_title[name=?]", "task[title]"

      assert_select "input#task_size[name=?]", "task[size]"

      assert_select "input#task_project_id[name=?]", "task[project_id]"
    end
  end
end
