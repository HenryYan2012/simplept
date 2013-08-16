require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :description => "MyString",
      :kind => "MyString",
      :story_id => 1,
      :position => 1,
      :complete => false
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
      assert_select "input#task_description[name=?]", "task[description]"
      assert_select "input#task_kind[name=?]", "task[kind]"
      assert_select "input#task_story_id[name=?]", "task[story_id]"
      assert_select "input#task_position[name=?]", "task[position]"
      assert_select "input#task_complete[name=?]", "task[complete]"
    end
  end
end
