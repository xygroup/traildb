cc_library(
  name = "traildb",
  hdrs = [
    "src/traildb.h",
    "src/tdb_error.h",
    "src/tdb_types.h",
    "src/tdb_limits.h",
  ],
  deps = [
    ":traildb_impl",
  ],
  include_prefix = "src",
  visibility = ["//visibility:public"]
)

cc_library(
  name = "traildb_impl",
  srcs = [
    "src/tdb.c",
    "src/tdb_cons.c",
    "src/tdb_uuid.c",
    "src/tdb_decode.c",
    "src/tdb_encode.c",
    "src/tdb_encode_model.c",
    "src/tdb_queue.c",
    "src/tdb_huffman.c",
    "src/tdb_cons_package.c",
    "src/tdb_package.c",
    "src/arena.c",
    "src/judy_str_map.c",
    "src/judy_128_map.c",
    "src/xxhash/xxhash.c",
    "src/dsfmt/dSFMT.c",
  ],
  hdrs = [
    "src/tdb_internal.h",
    "src/traildb.h",
    "src/tdb_error.h",
    "src/tdb_types.h",
    "src/tdb_limits.h",
    "src/dsfmt/dSFMT-params521.h",
    "src/dsfmt/dSFMT-common.h",
    "src/dsfmt/dSFMT-params.h",
    "src/dsfmt/dSFMT.h",
    "src/tdb_package.h",
    "src/arena.h",
    "src/judy_str_map.h",
    "src/xxhash/xxhash.h",
    "src/judy_128_map.h",
    "src/tdb_profile.h",
    "src/tdb_io.h",
    "src/tdb_huffman.h",
    "src/tdb_bits.h",
    "src/tdb_queue.h",
    "src/tdb_encode_model.h",
  ],
  deps = [
    "//judy",
    # "//archive",
  ],
  linkstatic = 1,
  copts = [
    "-std=c99",
    "-DJUDYERROR=judyerror_macro_missing_fix_this",
    "-DDSFMT_MEXP=521",
    "-O3",
    "-fvisibility=hidden",
    "-g",
    "-Wall",
    "-Wextra",
    "-Wconversion",
    "-Wcast-qual",
    "-Wformat-security",
    "-Wmissing-declarations",
    "-Wmissing-prototypes",
    "-Wnested-externs",
    "-Wpointer-arith",
    "-Wshadow",
    #"-strict-prototypes",
    "-Itraildb/src",
    "-IJudy/src",
    "-Itraildb/src/xxhash",
    "-Itraildb/src/dsfmt",
    "-Iarchive/include",
    # "-DHAVE_ARCHIVE_H=1",
],
  visibility = ["//visibility:private"],
)

cc_binary(
name="traildb_bench",
srcs=[
"src/traildb.h",
"util/traildb_bench.c",
"src/tdb_profile.h"
],
deps = [
":traildb"
],
copts = [
"-IJudy/src",
"-IJudy/src/JudyCommon",
"-Itraildb",
],
)

cc_binary(
name="tbd",
srcs=[
"src/traildb.h",
"tdbcli/main.c",
"tdbcli/op_dump.c",
"tdbcli/op_make.c",
"tdbcli/jsmn/jsmn.c",
],
deps = [
":traildb"
],
copts = [
"-IJudy/src",
"-IJudy/src/JudyCommon",
"-Itraildb/src",
"-std=c99",
"-DJUDYERROR=judyerror_macro_missing_fix_this",
"-O3",
"-g",
"-Wall",
],
)

cc_binary(
name="tutorial_simple_traildb",
srcs=[
"src/traildb.h",
"examples/tutorial_simple_traildb.c",
],
deps = [
":traildb"
],
copts = [
"-IJudy/src",
"-IJudy/src/JudyCommon",
"-Itraildb/src",
"-std=c99",
"-DJUDYERROR=judyerror_macro_missing_fix_this",
"-O3",
"-g",
"-Wall",
],
)

cc_binary(
name="tutorial_wikipedia_sessions",
srcs=[
"src/traildb.h",
"examples/tutorial_wikipedia_sessions.c",
],
deps = [
":traildb"
],
copts = [
"-IJudy/src",
"-IJudy/src/JudyCommon",
"-Itraildb/src",
"-std=c99",
"-DJUDYERROR=judyerror_macro_missing_fix_this",
"-O3",
"-g",
"-Wall",
],
)
