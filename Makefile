build-latest:
	docker build -f Dockerfile -t "layermanager/qgis-server:latest" .

show-qgis-version:
	docker run --rm -it layermanager/qgis-server:latest apt-cache policy qgis-server

build-and-push:
	docker build -f Dockerfile -t "layermanager/qgis-server:$${QGIS_SERVER_VERSION}" .
	docker push "layermanager/qgis-server:$${QGIS_SERVER_VERSION}"

