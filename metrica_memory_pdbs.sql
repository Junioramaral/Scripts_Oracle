-- A viewV$RSRCPDBMETRIC disponibiliza para nós as informações da quantidade de memória usada pelos PDBs.


select r.con_id, p.pdb_name, r.sga_bytes, r.pga_bytes, r.buffer_cache_bytes, r.shared_pool_bytes
 from V_$RSRCPDBMETRIC r, cdb_pdbs p
where r.con_id = p.con_id
/
