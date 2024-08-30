from Bio import SeqIO
import sys

fasta_file = sys.argv[1]
fasta_sequences = SeqIO.parse(open(fasta_file),'fasta')
gene_position = sys.argv[2]

mutation_pos_list = [430, 805, 808, 817]
mutation_list = ['GGT', 'ATG', 'GCT', 'GTT']

for sequence in fasta_sequences:
    for i in range(0, len(mutation_pos_list)):
        start = int(gene_position) + int(mutation_pos_list[i] - 2)
        end = start + 3
        codon = sequence.seq[start:end]
        if codon != mutation_list[i]:
            raise SystemExit(f"Test failed: {codon} at position {start}-{end} is not equal to {mutation_list[i]}")
    
    print("All mutations validated successfully!")
