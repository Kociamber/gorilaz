json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :nickname, :last_name, :date_birth, :date_joined, :belt, :stripes, :avatar, :description
  json.url member_url(member, format: :json)
end
