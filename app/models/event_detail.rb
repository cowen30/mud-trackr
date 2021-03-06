class EventDetail < ApplicationRecord
    belongs_to :event, class_name: 'Event', foreign_key: 'event_id'
    belongs_to :event_type, class_name: 'EventType', foreign_key: 'event_type_id'
    belongs_to :updated_by, class_name: 'User', foreign_key: 'updated_by', optional: true
end
