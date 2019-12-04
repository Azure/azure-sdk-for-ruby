# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Defines values for FabricEventKind
    #
    module FabricEventKind
      ClusterEvent = "ClusterEvent"
      ContainerInstanceEvent = "ContainerInstanceEvent"
      NodeEvent = "NodeEvent"
      ApplicationEvent = "ApplicationEvent"
      ServiceEvent = "ServiceEvent"
      PartitionEvent = "PartitionEvent"
      ReplicaEvent = "ReplicaEvent"
      PartitionAnalysisEvent = "PartitionAnalysisEvent"
      ApplicationCreated = "ApplicationCreated"
      ApplicationDeleted = "ApplicationDeleted"
      ApplicationNewHealthReport = "ApplicationNewHealthReport"
      ApplicationHealthReportExpired = "ApplicationHealthReportExpired"
      ApplicationUpgradeCompleted = "ApplicationUpgradeCompleted"
      ApplicationUpgradeDomainCompleted = "ApplicationUpgradeDomainCompleted"
      ApplicationUpgradeRollbackCompleted = "ApplicationUpgradeRollbackCompleted"
      ApplicationUpgradeRollbackStarted = "ApplicationUpgradeRollbackStarted"
      ApplicationUpgradeStarted = "ApplicationUpgradeStarted"
      DeployedApplicationNewHealthReport = "DeployedApplicationNewHealthReport"
      DeployedApplicationHealthReportExpired = "DeployedApplicationHealthReportExpired"
      ApplicationProcessExited = "ApplicationProcessExited"
      ApplicationContainerInstanceExited = "ApplicationContainerInstanceExited"
      NodeAborted = "NodeAborted"
      NodeAddedToCluster = "NodeAddedToCluster"
      NodeClosed = "NodeClosed"
      NodeDeactivateCompleted = "NodeDeactivateCompleted"
      NodeDeactivateStarted = "NodeDeactivateStarted"
      NodeDown = "NodeDown"
      NodeNewHealthReport = "NodeNewHealthReport"
      NodeHealthReportExpired = "NodeHealthReportExpired"
      NodeOpenSucceeded = "NodeOpenSucceeded"
      NodeOpenFailed = "NodeOpenFailed"
      NodeRemovedFromCluster = "NodeRemovedFromCluster"
      NodeUp = "NodeUp"
      PartitionNewHealthReport = "PartitionNewHealthReport"
      PartitionHealthReportExpired = "PartitionHealthReportExpired"
      PartitionReconfigured = "PartitionReconfigured"
      PartitionPrimaryMoveAnalysis = "PartitionPrimaryMoveAnalysis"
      ServiceCreated = "ServiceCreated"
      ServiceDeleted = "ServiceDeleted"
      ServiceNewHealthReport = "ServiceNewHealthReport"
      ServiceHealthReportExpired = "ServiceHealthReportExpired"
      DeployedServicePackageNewHealthReport = "DeployedServicePackageNewHealthReport"
      DeployedServicePackageHealthReportExpired = "DeployedServicePackageHealthReportExpired"
      StatefulReplicaNewHealthReport = "StatefulReplicaNewHealthReport"
      StatefulReplicaHealthReportExpired = "StatefulReplicaHealthReportExpired"
      StatelessReplicaNewHealthReport = "StatelessReplicaNewHealthReport"
      StatelessReplicaHealthReportExpired = "StatelessReplicaHealthReportExpired"
      ClusterNewHealthReport = "ClusterNewHealthReport"
      ClusterHealthReportExpired = "ClusterHealthReportExpired"
      ClusterUpgradeCompleted = "ClusterUpgradeCompleted"
      ClusterUpgradeDomainCompleted = "ClusterUpgradeDomainCompleted"
      ClusterUpgradeRollbackCompleted = "ClusterUpgradeRollbackCompleted"
      ClusterUpgradeRollbackStarted = "ClusterUpgradeRollbackStarted"
      ClusterUpgradeStarted = "ClusterUpgradeStarted"
      ChaosStopped = "ChaosStopped"
      ChaosStarted = "ChaosStarted"
      ChaosCodePackageRestartScheduled = "ChaosCodePackageRestartScheduled"
      ChaosReplicaRemovalScheduled = "ChaosReplicaRemovalScheduled"
      ChaosPartitionSecondaryMoveScheduled = "ChaosPartitionSecondaryMoveScheduled"
      ChaosPartitionPrimaryMoveScheduled = "ChaosPartitionPrimaryMoveScheduled"
      ChaosReplicaRestartScheduled = "ChaosReplicaRestartScheduled"
      ChaosNodeRestartScheduled = "ChaosNodeRestartScheduled"
    end
  end
end
