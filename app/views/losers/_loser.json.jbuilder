# frozen_string_literal: true

json.extract! loser, :id, :vorname, :nachname, :created_at, :updated_at
json.url loser_url(loser, format: :json)
