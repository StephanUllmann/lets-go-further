FROM postgres:15.6-alpine3.19

# USER postgres

COPY init.sql /docker-entrypoint-initdb.d/

# RUN chmod 0700 /var/lib/postgresql/data &&\
#     initdb /var/lib/postgresql/data &&\
#     echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf &&\
#     echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf


EXPOSE 5432
