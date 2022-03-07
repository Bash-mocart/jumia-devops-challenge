variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
***REMOVED***

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
***REMOVED***

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
***REMOVED***

variable "private_subnet_a_cidr_block" {
  type    = string
  default = "10.0.4.0/24"
***REMOVED***

variable "private_subnet_b_cidr_block" {
  type    = string
  default = "10.0.5.0/24"
***REMOVED***

variable "private_subnet_c_cidr_block" {
  type    = string
  default = "10.0.6.0/24"
***REMOVED***

variable "public_subnet_c_cidr_block" {
  type    = string
  default = "10.0.3.0/24"
***REMOVED***

variable "public_subnet_b_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
***REMOVED***

variable "public_subnet_a_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
***REMOVED***

variable "db_name" {
  type    = string
  default = "postgres"
***REMOVED***

variable "db_engine" {
  type    = string
  default = "postgres"
***REMOVED***

variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
***REMOVED***

variable "db_parameter_group" {
  type    = string
  default = "default.postgres13"
***REMOVED***

variable "eks_instance_type" {
  type    = string
  default = "t3.small"
***REMOVED***

variable "key_name" {
  type    = string
  default = "bashir"
***REMOVED***

variable "eks_cluster" {
  type    = string
  default = "eks"
***REMOVED***

variable "eks_version" {
  type    = string
  default = "1.19"
***REMOVED***

variable "eks_ami_type" {
  type    = string
  default = "AL2_x86_64"
***REMOVED***

variable "eks_capacity_type" {
  type    = string
  default = "ON_DEMAND"
***REMOVED***

variable "eks_node_group" {
  type    = string
  default = "eks-node-group-general"
***REMOVED***

variable "eks_iam_policy_attachment" {
  type    = string
  default = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
***REMOVED***

variable "eks_iam_cni_policy" {
  type    = string
  default = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
***REMOVED***

variable "amazon_ec2_container_registry_read_only" {
  type    = string
  default = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
***REMOVED***

variable "eks_node_group_name" {
  type    = string
  default = "node-general"
***REMOVED***

variable "account_id" {
  type    = string
  sensitive   = true
***REMOVED***








