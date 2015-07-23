$barzoCount = 50

class Instagram
	attr_accessor :gender
	attr_accessor :areYouFamous
	attr_accessor :like

	def initialize(gender)
    self.gender = gender
  	self.areYouFamous = false
  	self.like = 0
  end

  def setAreYouFamous(areYouFamous)
    self.areYouFamous = areYouFamous
  end

  def profile
  	self.areYouFamous ? "sexy" : "barzo"
  end
end

class Selfie < Instagram
	attr_accessor :showBoobs

	def initialize(gender)
		super(gender)
		self.showBoobs = false
	end

	def takePhoto(showBoobs)
		self.showBoobs = showBoobs

		if showBoobs
			self.setAreYouFamous(true)
		end

		if self.gender == "male" && !self.areYouFamous
			self.like = 7
		elsif self.gender == "male" && self.areYouFamous
			self.like = 300 - $barzoCount ## barzoCount
		elsif self.gender == "female"
			if !self.areYouFamous
				self.like = 20 # bff mode #on
			else
				self.like = 700
			end

			while self.showBoobs && $barzoCount < 150 do 
  			self.like += $barzoCount
				$barzoCount += 1
			end
		else
			puts "Go away fuckin faggot."
		end
	end
end
