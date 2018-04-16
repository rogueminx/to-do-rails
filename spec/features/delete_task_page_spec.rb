require 'rails_helper'

describe "the delete a task process" do
  it "delete a task" do
    list = List.create(:name => 'Home stuff')
    task = Task.create(:description => 'Wash the dishes', :list_id => list.id)
    visit list_path(list)
    click_on 'Delete Task'
    expect(page).to have_no_content 'Wash the dishes'
  end
end
