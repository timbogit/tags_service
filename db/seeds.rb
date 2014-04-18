# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# 2.1.1 :001 > Tag.all.map(&:attributes).map(&:symbolize_keys).map{|t| t.slice(:name)}
# D, [2014-04-17T17:59:12.759199 #56712] DEBUG -- :   Tag Load (7.1ms)  SELECT "tags".* FROM "tags"
#  => [{:name=>"burger"}, {:name=>"bacon"}, {:name=>"collectible"}, {:name=>"computer"}]
#
# 2.1.1 :001 > TaggedItem.all.map(&:attributes).map(&:symbolize_keys).map{|t| t.slice(:item_id, :tag_id)}
# D, [2014-04-17T18:03:26.481058 #56815] DEBUG -- :   TaggedItem Load (1.7ms)  SELECT "tagged_items".* FROM "tagged_items"
#  => [{:item_id=>1, :tag_id=>615779610}, {:item_id=>1, :tag_id=>803428880}, {:item_id=>1, :tag_id=>488609646}, {:item_id=>2, :tag_id=>580429736}, {:item_id=>2, :tag_id=>488609646}]

Tag.create!([
  {:id=>1,:name=>"burger"},
  {:id=>2,:name=>"bacon"},
  {:id=>3,:name=>"collectible"},
  {:id=>4,:name=>"computer"}
])

TaggedItem.create!([
  {:item_id=>1, :tag_id=>1},
  {:item_id=>1, :tag_id=>2},
  {:item_id=>1, :tag_id=>4},
  {:item_id=>2, :tag_id=>1},
  {:item_id=>2, :tag_id=>2}
] )
