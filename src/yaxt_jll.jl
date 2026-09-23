# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule yaxt_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("yaxt")
JLLWrappers.@generate_main_file("yaxt", Base.UUID("27caa652-68db-5633-bae6-d8416da5b853"))
end  # module yaxt_jll
