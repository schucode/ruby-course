# In some countries of former Soviet Union there was
# a belief about lucky tickets. A transport ticket
# of any sort was believed to posess luck if sum of
# digits on the left half of its number was equal to
# the sum of digits on the right half. Here are
# examples of such numbers:
#
# 003 111    #         3 = 1 + 1 + 1
# 813 372    # 8 + 1 + 3 = 3 + 7 + 2
# 17 9 35     #     1 + 7 = 3 + 5
# 5632 8116  # 
#
# Such tickets were either eaten after being used
# or collected for bragging rights.
#
# Read the tests carefully and ake them pass.
#
# Credit to SundaySalsa on codewars.com for coming
# up with this problem.

class Lucky
	def self.check(str)

		raise :error if str.size == 0

		test = str.split("")
		use = test.collect {|x| x.to_i}

		if use.length%2 != 0
			use.delete_at(use.length/2)
		end

		firsthalf = 0
		secondhalf = 0

		(0...use.length/2).each do |i|
			firsthalf += use[i]
		end

		(use.length/2...use.length).each do |i|
			secondhalf += use[i]
		end

		return firsthalf == secondhalf

	end
end





