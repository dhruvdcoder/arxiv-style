$dependents_list = 1;
$deps_file = ".deps";

END {
  system("python3 arxiv_collector.py --latexmk-deps $deps_file");
}