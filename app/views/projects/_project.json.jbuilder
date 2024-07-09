json.extract! project, :id, :title, :github, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
