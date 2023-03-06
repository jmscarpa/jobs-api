json.array! @jobs do |job|
  json.id job.id
  json.title job.title
  json.role_type job.role_type.title
  json.remote job.remote
  json.created_at job.created_at
end
 