;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     edwin.com. root.edwin.com. (
                             13        ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.edwin.com.
ns      IN      A       192.168.70.3 
parcial IN      A       192.168.70.3
cli     IN      A       192.168.70.9
server  IN      CNAME   ns
mail    IN      CNAME   ns

                                  

