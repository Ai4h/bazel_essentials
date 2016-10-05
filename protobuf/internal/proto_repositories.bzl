load("//protobuf:internal/require.bzl", "require")
load("//protobuf:deps.bzl", "DEPS")

def proto_repositories(excludes = [],
                       lang_deps = {},
                       lang_requires = [],
                       protobuf_deps = DEPS,
                       protobuf_requires = [
                         "com_github_google_protobuf",
                         "protoc",
                         #"protobuf_compiler", # cc_library
                       ],
                       overrides = {},
                       verbose = 0):
  return require(
    keys = protobuf_requires + lang_requires,
    deps = protobuf_deps + lang_deps,
    excludes = excludes,
    overrides = overrides,
    verbose = verbose,
  )
