test_that("hi() works", {
    expect_identical(
        hi("world"),
        "hello WORLD you have 5 letters in your name")
    expect_error(
        hi("world", how = "murmur"))
    expect_error(
        hi("world", how = "murmur"),
        "'arg' should be one of \"shout\", \"whisper\"")
})
