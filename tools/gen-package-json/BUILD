package(default_visibility = ["//visibility:public"])

load("//tools:ts_library.bzl", "ts_library")

ts_library(
    name = "json-merge",
    srcs = glob(["**/*.ts"]),
    deps = [
        "@npm//@types/node",
        "@npm//@types/yargs",
        "@npm//yargs",
    ],
)

load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

nodejs_binary(
    name = "bin",
    data = [
        ":json-merge",
        templated_args = ["--bazel_patch_module_resolver"],
    ],
    entry_point = ":index.ts",
)
