sudo docker build -f Dockerfile.builder -t sqlite_builder .
sudo docker run --name sqlite_builder_container sqlite_builder
sudo docker cp sqlite_builder_container:/app/libsqlite.so .
sudo docker cp sqlite_builder_container:/app/build.log .
sudo docker stop sqlite_builder_container
sudo docker rm sqlite_builder_container
sudo docker rmi -f sqlite_builder