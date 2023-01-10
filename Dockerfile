FROM 710264925055.dkr.ecr.ap-south-1.amazonaws.com/flyway:4.1.2
ARG WORK_DIR

COPY ${WORK_DIR}/migration/ddl /flyway/sql

COPY build/flyway/migrate.sh /usr/bin/migrate.sh

RUN chmod +x /usr/bin/migrate.sh

CMD ["/usr/bin/migrate.sh"]

