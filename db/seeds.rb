def create_activity_once(attributes)
  raise ArgumentError, "This method only accepts a Hash." unless attributes.is_a?(Hash)
  o = Activity.find_by_question(attributes[:question])
  if o.nil?
    puts "Seeding #{attributes[:question]}..." if attributes[:question]
    puts attributes.inspect
    o=Activity.create(attributes)
  end
end

create_activity_once({:question =>"question 1",:answer => 1,:level=>1,:details=>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor."})
create_activity_once({:question =>"question 2",:answer => 0,:level=>1,:details=>"Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."})
create_activity_once({:question =>"question 3",:answer => 1,:level=>2,:details=>"ras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim."})
create_activity_once({:question =>"question 4",:answer => 0,:level=>2,:details=>"semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante"})
create_activity_once({:question =>"question 5",:answer => 0,:level=>3,:details=>"Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"})
create_activity_once({:question =>"question 6",:answer => 1,:level=>3,:details=>"Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. "})

def create_charms_once(attributes)
  raise ArgumentError, "This method only accepts a Hash." unless attributes.is_a?(Hash)
  o = Charm.find_by_name(attributes[:name])
  if o.nil?
    puts "Seeding #{attributes[:name]}..." if attributes[:name]
    puts attributes.inspect
    o=Charm.create(attributes)
  end
end

create_charms_once({:name =>"Bronze Badge",:merit=>2,:description => "For 2 activities finished"})
create_charms_once({:name =>"Silver Badge",:merit=>4,:description => "For 4 activities finished"})
create_charms_once({:name =>"Gold Badge",:merit=>6,:description => "For 6 activities finished"})