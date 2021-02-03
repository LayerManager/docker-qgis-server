build-latest:
	docker build -f Dockerfile -t "jirikcz/qgis-server:latest" .

show-qgis-version:
	docker run --rm -it jirikcz/qgis-server:latest apt-cache policy qgis-server

build-and-push:
	docker build -f Dockerfile -t "jirikcz/qgis-server:$${QGIS_SERVER_VERSION}" .
	docker push "jirikcz/qgis-server:$${QGIS_SERVER_VERSION}"

