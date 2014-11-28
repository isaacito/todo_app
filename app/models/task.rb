class Task < ActiveRecord::Base
    validates :state, inclusion: (0..3)
    belongs_to :list

    def status
        if self.state == 0 
             "Backlog"
        elsif self.state == 1
             "Ready"
        elsif self.state == 2
             "In Progress"
        elsif self.state == 3
             "Complete"
        end        
    end   

     def css_class
        if self.state == 0 
             "backlog"
        elsif self.state == 1
             "ready"
        elsif self.state == 2
             "in-progress"
        elsif self.state == 3
             "complete"
        end        
    end  

end

