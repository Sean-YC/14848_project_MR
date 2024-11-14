import sys
import os
from collections import defaultdict

# Mapper function
for line in sys.stdin:
    filepath = os.environ["mapreduce_map_input_file"]  # Get the file path
    words = line.strip().split()

    term_counts = defaultdict(int)
    for word in words:
        term_counts[word.lower()] += 1

    for term, count in term_counts.items():
        print(f"{term}\t{filepath}\t{count}")
