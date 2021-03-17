workspace(name = "rules_foreign_cc")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

local_repository(
    name = "rules_foreign_cc_examples",
    path = "examples",
)

load("@rules_foreign_cc_examples//deps:repositories.bzl", examples_repositories = "repositories")

examples_repositories()

load("@rules_foreign_cc_examples//deps:deps_android.bzl", examples_deps_android = "deps_android")

examples_deps_android()

load("@rules_foreign_cc_examples//deps:deps_jvm_external.bzl", examples_deps_jvm_external = "deps_jvm_external")

examples_deps_jvm_external()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

http_archive(
    name = "bazel_toolchains",
    sha256 = "5b6eef36e1f627bf739d3212487c7c31e9f19ce68bcb4d672aa11be1bd6bd2ee",
    strip_prefix = "bazel-toolchains-5.1.0",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/archive/v5.1.0.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

rbe_autoconfig(name = "buildkite_config")
