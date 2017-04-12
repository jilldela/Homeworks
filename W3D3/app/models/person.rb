# == Schema Information
# Table name: people
#
# name        :string       not null
# house_id    :integer
# created_at: :datetime
# updated_at: :datetime

class Person < ActiveRecord::Base
  belongs_to :house,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House'
end
