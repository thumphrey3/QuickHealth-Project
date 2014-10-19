json.array! @cases do |event|
  json.extract! event, :id, :patient_id, :appointment, :urgency_level
  json.title "Case No. #{event.id}, #{event.patient.first_name}"
  json.start event.created_at
  json.url case_path(event.id)
end