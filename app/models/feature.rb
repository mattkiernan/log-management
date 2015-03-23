class Feature < ActiveRecord::Base
  belongs_to :offering, polymorphic: true, dependent: :destroy
end
