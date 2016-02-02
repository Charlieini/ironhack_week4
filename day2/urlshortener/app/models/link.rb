class Link < ActiveRecord::Base

	
	def self.store(parameter)
		parameter_validated = validateProtocol(parameter)
		create(
			:original_url => parameter_validated,
			:shortcut => random_generator,
			:counter => 0
			)
	end

	private

	def self.random_generator
		range1 = ("a".."z").to_a
		# range2 = ("A".."Z").to_a
		range2 = range1.map(&:upcase)
		range = [range1,range2].flatten

		randomize = range.shuffle[0,3].join
	end

	def self.validateProtocol(parameter)
		protocol = "http://"
		if !(parameter.include? protocol)
			parameter = protocol + parameter
		end
		parameter
	end

	def self.linkExist(parameter)
		Link.where(original_url: parameter).empty?
	end

	def self.addVisit(parameter)
		link = Link.where(shortcut: parameter).first
		link.counter += 1
		link.save
	end


end
