class Array
    def sum(start = 0)
        # the :+ means 'the symbol plus'
        # the & means 'pass as a block' -- the code block in curly braces that usually comes after
        # Ruby knows to convert the symbol to a process
        inject(start, &:+)
    end
end
