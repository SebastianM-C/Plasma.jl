using Pkg
using SafeTestsets

const GROUP = get(ENV, "GROUP", "All")

@time begin
  if GROUP == "All" || GROUP == "plasmatests"
      @time @safetestset "Plasma tests" begin include("plasmatests.jl") end
  end
end