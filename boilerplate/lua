local mod = {
   -- config/defaults
   something = 1
}

function mod:doSomething(var)
   -- if var is nil or unset give it a default of 1
   var = var or 1
   alert(var)
end

function mod:init()
        if self.something == 1 then
         -- invoke doSomething with default
         self:doSomething(self.something)
       end
end

return mod
