json.extract! task, :id, :title, :description, :project, :owner, :status, :required_by, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
