json.extract! project, :id, :title, :thumbnail_url, :video_url, :body, :pro, :created_at, :updated_at
json.url project_url(project, format: :json)
json.body project.body.to_s
