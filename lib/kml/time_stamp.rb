# <TimeStamp>
#   <when>2005-08-21T09:01:00Z</when>
# </TimeStamp>


module KML
  class TimeStamp < KML::Object
    attr_accessor :when 
      
    def render(xm=Builder::XmlMarkup.new(:indent => 2))
        xm.__send__(:when, self.__send__(:when)) unless self.__send__(:when).nil?
    end
    
  end
end

