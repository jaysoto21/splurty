class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3 }

def unique_tag
	author_array = self.author.split(" ").collect do |name|
		name[0]
	end

	author_array.join + '#' +self.id.to_s
end

end
