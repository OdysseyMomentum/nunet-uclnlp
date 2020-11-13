# UCLFNS Snet service 

Snet Marketplace service for [UCLNLP FNC-1 Submission](https://mr.cs.ucl.ac.uk/)

## Setup


	docker build -t uclnlp_snet .
	
	# map snet and etcd directory to container
	docker run -v $HOME/.snet/:/root/.snet/ -v $HOME/.snet/etcd/uclnlp-service/:/opt/singnet/etcd/ -it uclnlp_snet bash

	# snet request to service (using snet or the test script)
	snet client call odyssey-org uclnlp-service default_group stance_classify '{"headline":"news_headline","body":"news_body"}' 
	
	python3 test_uclnlp_service.py
