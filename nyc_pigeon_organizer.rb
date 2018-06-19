def nyc_pigeon_organizer(data)

  names = []
  pigeon_hash = {}

  data.each do |attribute, items|
    items.each do |feature, array|
      array.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
  
  names.each do |x|
    pigeon_hash[x] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[x][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << feature.to_s if name == x
        end
      end
    end
  end
  
  pigeon_hash

end