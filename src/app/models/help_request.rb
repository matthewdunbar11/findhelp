class HelpRequest < ApplicationRecord
  belongs_to :user
  belongs_to :help_type
end
