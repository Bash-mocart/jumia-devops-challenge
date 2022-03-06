# Launch template for the worker nodes
resource "aws_launch_template" "eks-nodes-launch" {
  name = "foo"

  instance_type = "t3.small"
  key_name = "bashir"
  

  vpc_security_group_ids = [aws_eks_cluster.eks.vpc_config[0].cluster_security_group_id]


  user_data = filebase64("script.sh")
***REMOVED***