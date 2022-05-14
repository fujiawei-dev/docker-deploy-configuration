IMAGES=$(cat images/tag_latest.txt | xargs)

for IMAGE in $IMAGES
do
	docker pull $IMAGE:latest
done

IMAGES=$(cat images/tag_version.txt | xargs)

for IMAGE in $IMAGES
do
	docker pull $IMAGE
done
