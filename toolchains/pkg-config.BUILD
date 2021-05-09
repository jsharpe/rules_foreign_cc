load("@rules_foreign_cc//foreign_cc:defs.bzl", "configure_make")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

configure_make(
    name = "pkg-config",
    configure_env_vars = select({
        "@platforms//os:macos": {"AR": ""},
        "//conditions:default": {},
    }),
    configure_options = ["--with-internal-glib"],
    lib_source = ":all_srcs",
    out_binaries = [
        "pkg-config",
    ],
)
