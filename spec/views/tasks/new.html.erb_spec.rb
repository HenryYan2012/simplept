require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :description => "MyString",
      :kind => "MyString",
      :story_id => 1,
      :position => 1,
      :complete => false
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input#task_description[name=?]", "task[description]"
      assert_select "input#task_kind[name=?]", "task[kind]"
      assert_select "input#task_story_id[name=?]", "task[story_id]"
      assert_select "input#task_position[name=?]", "task[position]"
      assert_select "input#task_complete[name=?]", "task[complete]"
    end
  end
end
