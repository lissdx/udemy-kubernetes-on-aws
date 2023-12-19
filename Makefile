TO_CONDUCTOR_API_DB_NAME=to_udemy_k8s
DB_USER_NAME=to_udemy_k8s
DB_PASSWORD=to_udemy_k8s_aws
DB_URL=postgresql://$(DB_USER_NAME):$(DB_PASSWORD)@localhost:5432/$(TO_CONDUCTOR_API_DB_NAME)?sslmode=disable

# run docker with name ThreatOptix Postgres DB. see docker-compose-pg.yml
local_pg_up:
	docker-compose -f docker-compose-pg.yml up -d
local_pg_down:
	docker-compose -f docker-compose-pg.yml down
