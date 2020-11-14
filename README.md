# UCLFNS Snet service 

Snet Marketplace service for [UCLNLP FNC-1 Submission](https://mr.cs.ucl.ac.uk/)

## Setup

	# build snet_publish_service image if it doesn't exist
	docker build -t snet_publish_service https://github.com/singnet/dev-portal.git#master:/tutorials/docker

	docker build -t uclnlp_snet .
	
	# map daemon and service ports externally
	docker run -p 7000:7000 -p 7007:7007 -it uclnlp_snet bash

	# uclnlp server
	python3 run_uclnlp_service.py --daemon-config snetd.config.json
	python3 run_uclnlp_service.py --no-daemon

	# snet request to service (using snet or the test script)
	snet client call odyssey-org uclnlp-service default_group stance_classify '{"headline":"news_headline","body":"news_body"}' 
	
	python3 test_uclnlp_service.py
