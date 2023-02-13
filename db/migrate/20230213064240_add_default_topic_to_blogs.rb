class AddDefaultTopicToBlogs < ActiveRecord::Migration[5.2]
  def change
    change_column_default :blogs, :topic_id, 1
  end
end
