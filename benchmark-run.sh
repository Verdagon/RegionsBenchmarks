echo Generational:

# Do a run as a super-warmup
hyperfine --warmup 30 --runs 500 "./build_unsafe_no_bounds/main" "./build_unsafe_with_bounds/main" "./build_safe_baseline/main" "./build_safe_32/main" "./build_safe_64/main" "./build_safe_fastest/main" "./build_resilientv3/main"
# Pay more attention to this one
hyperfine --warmup 30 --runs 500 "./build_unsafe_no_bounds/main" "./build_unsafe_with_bounds/main" "./build_safe_baseline/main" "./build_safe_32/main" "./build_safe_64/main" "./build_safe_fastest/main" "./build_resilientv3/main"

echo RC:

# Do a run as a super-warmup
hyperfine --warmup 30 --runs 500 "./build_unsafe_no_bounds/main" "./build_unsafe_with_bounds/main" "./build_rc_regions/main" "./build_naive_rc/main" "./build_naive_atomic_rc/main"
# Pay more attention to this one
hyperfine --warmup 30 --runs 500 "./build_unsafe_no_bounds/main" "./build_unsafe_with_bounds/main" "./build_rc_regions/main" "./build_naive_rc/main" "./build_naive_atomic_rc/main"
