class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end


    def backers
        ProjectBacker.all.select {|pb_object| pb_object.project == self}.map{|pb_instance| pb_instance.backer}
    end
end