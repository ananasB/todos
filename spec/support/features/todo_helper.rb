module Features
  def create_todo(todo_title)
    click_on "Add a new todo"
    fill_in "Title", with: todo_title
    click_on "Submit"
  end

  def display_todo(todo_title)
  	have_css(".todos li", text: "Buy milk")
  end

  def display_completed_todo(todo_title)
  	have_css ".todos li.completed", text: "Buy milk"
  end
end