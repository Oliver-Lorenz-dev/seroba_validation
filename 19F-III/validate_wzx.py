from Bio import SeqIO
import sys

fasta_file = sys.argv[1]
fasta_sequences = SeqIO.parse(open(fasta_file),'fasta')
gene_position = sys.argv[2]

mutation_pos_list = [1112, 1133]
mutation_list = ['G','C']

for sequence in fasta_sequences:
    for i in range(0, len(mutation_pos_list)):
        base_pos=int(gene_position) + int(mutation_pos_list[i])
        base = sequence.seq[base_pos]
        if base != mutation_list[i]:
            raise SystemExit(f"Test failed: {base} at position {mutation_pos_list[i]} is not equal to {mutation_list[i]}")
    
    print("All mutations validated successfully!")
