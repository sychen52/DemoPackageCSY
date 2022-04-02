module DemoPackageCSY

# Write your package code here.
print_greeting(io::IO = stdout) = printstyled(io, "Hello, world!"; color = :magenta)

end
