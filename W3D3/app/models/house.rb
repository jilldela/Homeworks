# == SCHEMA
# Table Name:   Houses
#
# address     :string
# created_at  :datetime
# updated_at  :datetime

class House < ActiveRecord::Base
  has_many  :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
end
