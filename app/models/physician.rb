class Physician < ApplicationRecord
    has_many :offices, inverse_of: :physician
    has_many :appointments, dependent: :destroy
    has_many :patients, through: :appointmnets
	accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true
end
