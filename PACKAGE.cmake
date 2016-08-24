set (TRAILDB_INC ${INC_ROOT}/traildb/_/traildb)
set (TRAILDB_LIB ${BAZEL_BIN}/traildb/libtraildb_impl.a)

include_directories(${TRAILDB_INC})
