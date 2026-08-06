entrada <- readLines("stdin", n = 1)
numero <- as.numeric(entrada)

cat("=== Tabuada do", numero, "===\n")

for (x in 1:10) {
    resultado <- numero * x
    cat(numero, "x", x, "=", resultado, "\n")
}