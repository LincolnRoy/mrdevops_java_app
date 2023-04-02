
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0dfd0d376a9868e79","subnet-0d158e48adf1b270c","subnet-00b20608d0cee57fa"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "myeksnode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0dfd0d376a9868e79","subnet-0d158e48adf1b270c","subnet-00b20608d0cee57fa"]

        tags = {
             "Name" =  "node1"
         } 
  }
}
