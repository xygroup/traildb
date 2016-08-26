set (TRAILDB_INC ${INC_ROOT}/traildb/_/traildb)
set (TRAILDB_LIB ${BAZEL_BIN}/traildb/libtraildb_impl.a
                 ${BAZEL_BIN}/Judy/libJudy1.a
                 ${BAZEL_BIN}/Judy/libJudyL.a
                 ${BAZEL_BIN}/Judy/libJudySL.a
                 ${BAZEL_BIN}/Judy/libJudyMalloc.a
${BAZEL_BIN}/Judy/libLcount.a
${BAZEL_BIN}/Judy/libLinline.a
${BAZEL_BIN}/Judy/libLnext.a
${BAZEL_BIN}/Judy/libLprev.a
${WORKSPACE}/bazel-server/archive/lib/libarchive.dylib
)

include_directories(${TRAILDB_INC})
