# We can't use `require` or `load` because of the Bash preamble on the script.
source = File.read(File.expand_path("../../csvpeek", __FILE__))
_preamble, source = source.split("#!ruby", 2)
eval(source)
