import sys
from collections import defaultdict

# Initialize a dictionary to store term frequencies
term_dict = defaultdict(lambda: defaultdict(int))

# Reducer function
for line in sys.stdin:
    term, filepath, count = line.strip().split("\t")
    count = int(count)
    term_dict[term][filepath] += count

# Output the final inverted index
for term, postings in term_dict.items():
    postings_list = ', '.join([f"{doc}:{freq}" for doc, freq in postings.items()])
    print(f"{term}\t{{{postings_list}}}")
