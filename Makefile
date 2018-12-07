IMAGE := umr55766/python_gdal:1.0.1

test:
	docker run $(IMAGE)

image:
	docker build -t $(IMAGE) .

push-image:
	docker push $(IMAGE)

.PHONY: image push-image test
