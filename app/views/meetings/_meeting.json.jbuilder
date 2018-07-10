json.extract! meeting, :id, :home_team_name, :away_team_name, :date, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
