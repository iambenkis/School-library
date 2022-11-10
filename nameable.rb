class Nameable
    def correct_name
        raise NotImplementedError, "#{self.class} has not implemented methods '#{__method__}'"
    end
end