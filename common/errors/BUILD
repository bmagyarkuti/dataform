load("@df//testing:index.bzl", "ts_test_suite")
load("//tools:ts_library.bzl", "ts_library")

package(default_visibility = ["//visibility:public"])

ts_library(
    name = "errors",
    srcs = glob(
        ["*.ts"],
        exclude = ["*.spec.ts"],
    ),
    deps = [
        "//:modules-fix",
    ],
)

ts_test_suite(
    name = "tests",
    srcs = glob(["*.spec.ts"]),
    data = [
    ],
    templated_args = ["--bazel_patch_module_resolver"],
    deps = [
        ":errors",
        "@df//testing",
        "@npm//@types/chai",
        "@npm//@types/node",
        "@npm//chai",
    ],
)
