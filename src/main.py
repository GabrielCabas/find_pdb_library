"""
Main

Downloads a full matched pdb in 'config defined' folder and prints the accession of structure.

Edit this file at your convenience

"""
from modules.get_pdb import FindPdb

sequence = """MPRRAENWDEAEVGAEEAGVEEYGPEEDGGEESGAEESGPEESGPEELGAEEEMEAGRPRPVLRSVNSREPSQVIFCNRSPRVVLPVWLNFDGEPQPYPTLPPGTGRRIHSYRGHLWLFRDAGTHDGLLVNQTELFVPSLNVDGQPIFANITLPVYTLKERCLQVVRSLVKPENYRRLDIVRSLYEDLEDHPNVQKDLERLTQERIAHQRMGD"""
find_pdb = FindPdb(sequence)
pdb_accession = find_pdb.get_pdb()
print(pdb_accession)
