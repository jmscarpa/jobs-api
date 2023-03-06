File.open("db/data/submissions.json", "w") { |f| f.write Submission.all.to_json(except: [:id, :created_at, :updated_at]) }
