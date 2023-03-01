 vpc_cidr             = "10.10.0.0/16"
  name                 = "gwallet-vpc"
  env                  = "dev"
  public_subnets_cidr  = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
  private_subnets_cidr = ["10.10.3.0/24", "10.10.4.0/24", "10.10.5.0/24"]
  keyfile = "/home/wasif/.ssh/id_rsa.pub"



  #-----------------------------
  #----ECS

  ecr_repo_name= "cryptokarap2p"
  task_definition_name= "cryptokarap2p-td"
  containername= "cryptokarap2p-container"
  container_port= 80
  host_port=80
  td_cpu= 256
  td_memory= 512
  container_memory=512
  container_cpu=256
  target_group_name="cryptokarap2p-tg"
  load_balancer_name= "cryptokarap2p-lb"
  ecs_cluster_name="Cryptokara-P2P"
  ecs_service_name="cryptokarap2p-service"