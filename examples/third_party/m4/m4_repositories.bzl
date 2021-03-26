# buildifier: disable=module-docstring
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def m4_repositories():
    """Load all repositories needed for m4"""

    maybe(
        http_archive,
        name = "m4",
        build_file = Label("//m4:BUILD.m4.bazel"),
        strip_prefix = "m4-1.4.18",
        urls = [
            "http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz",
        ],
        sha256 = "ab2633921a5cd38e48797bf5521ad259bdc4b979078034a3b790d7fec5493fab",
    )
