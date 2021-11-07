module Rulers
    class Application

        def get_controller_and_action(env)
            # The comma separated variables will store what is split
            # the underscore is meant to imply 'a value I don't care about/am ignoring'
            # 4 in the split is the number of items returned
            _, cont, action, after =
            env["PATH_INFO"].split('/', 4) 
            cont = cont.capitalize # "People"
            cont += "Controller" # "PeopleController"

            # .const_get means look up any name starting with a capital letter
            [Object.const_get(cont), action]
        end
    end
end
