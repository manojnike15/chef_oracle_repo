module Oracle
        class Weblogic
                @@stat_var=0
                attr_accessor :awesome_level
                def initialize(awesome_level_temp)
                @awesome_level=awesome_level_temp
                @@stat_var=awesome_level_temp
                end
                def self.info
                @@stat_var

                #puts "I am in method info"
                end
        end
        class Oracle
                attr_accessor   :awesome_level
                def initialize(awesome_level_temp)
                @awesome_level=awesome_level_temp
                end
        end
end
