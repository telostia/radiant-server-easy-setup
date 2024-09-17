
# radiant node and electrumx set
up:
	docker-compose up -d
stop:
	docker-compose stop
build:
	docker-compose up --build -d
rm:
	docker-compose rm -f
bash:
	docker exec -it radiant-set bash
getinfo:
	docker exec -it radiant-set sh -c "radiant-cli -datadir=/root/.radiant -getinfo"
# update: placeholder
# add version settings to docker-compose set
# make stop && make build

# nginx web server
nup:
	docker-compose -f docker-compose-dual.yml up -d
nstop:
	docker-compose -f docker-compose-dual.yml up stop
nbuild:
	docker-compose -f docker-compose-dual.yml up --build -d
nrm:
	docker-compose -f docker-compose-dual.yml rm -f

#****************************************************/
# GIT SECTION
# sample:
# make git b=main t= m=
git:
	git add .
	git commit -m "[$t]: $m"
	git push -u github $b
