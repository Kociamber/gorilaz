# lib/tasks/belts.rake

namespace :members do
  desc "Move belt details from members to belts table"
  task move_belts: :environment do
    members = Member.all
    puts "Going to move #{members.count} belts"

    ActiveRecord::Base.transaction do
      members.each do |member|
        belt = Belt.new
        belt.member_id = member.id
        belt.belt = member.belt
        belt.stripes = member.stripes
        belt.save!
        print "."
      end
    end

    puts " All done now!"
  end
end
