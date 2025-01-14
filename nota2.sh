A=`psql -U postgres -c "select max(empresa_ultimasyncgps) from tb_empresa" switrans`
echo -e "Segun la consulta : \n  select max(empresa_ultimasyncgps) from tb_empresa \n  la fecha del ultimo backup de base de datos ZEUS es $A" > /var/lib/pgsql/consulta.txt
scp /var/lib/pgsql/consulta.txt root@192.168.0.110:/scripts/
ssh -l root 192.168.0.110 "/scripts/EnviaStatusBD.sh"

