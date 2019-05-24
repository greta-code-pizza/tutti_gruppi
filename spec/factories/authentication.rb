# frozen_string_literal: true

FactoryBot.define do
  factory :authentication do
    firstname { 'Khal' }
    lastname { 'Mamoul' }
    email { 'Khamoul@ox.com' }
    password { 'password' }
    userable { 1 }
  end
end