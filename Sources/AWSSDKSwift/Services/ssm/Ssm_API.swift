// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

/**
Amazon EC2 Systems Manager is a collection of capabilities that helps you automate management tasks such as collecting system inventory, applying operating system (OS) patches, automating the creation of Amazon Machine Images (AMIs), and configuring operating systems (OSs) and applications at scale. Systems Manager works with managed instances: Amazon EC2 instances and servers or virtual machines (VMs) in your on-premises environment that are configured for Systems Manager.  This references is intended to be used with the EC2 Systems Manager User Guide (Linux) (Windows). To get started, verify prerequisites and configure managed instances (Linux) (Windows).
*/
public struct Ssm {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AmazonSSM",
            service: "ssm",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SsmError.self]
        )
    }

    ///  List all versions for a document.
    public func listDocumentVersions(_ input: ListDocumentVersionsRequest) throws -> ListDocumentVersionsResult {
        return try client.send(operation: "ListDocumentVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.
    public func listCommandInvocations(_ input: ListCommandInvocationsRequest) throws -> ListCommandInvocationsResult {
        return try client.send(operation: "ListCommandInvocations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the associations for the specified SSM document or instance.
    public func describeAssociation(_ input: DescribeAssociationRequest) throws -> DescribeAssociationResult {
        return try client.send(operation: "DescribeAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all patches that could possibly be included in a patch baseline.
    public func describeAvailablePatches(_ input: DescribeAvailablePatchesRequest) throws -> DescribeAvailablePatchesResult {
        return try client.send(operation: "DescribeAvailablePatches", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-ApplyPatchBaseline Systems Manager document. 
    public func getDeployablePatchSnapshotForInstance(_ input: GetDeployablePatchSnapshotForInstanceRequest) throws -> GetDeployablePatchSnapshotForInstanceResult {
        return try client.send(operation: "GetDeployablePatchSnapshotForInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the details about a specific task executed as part of a Maintenance Window execution.
    public func getMaintenanceWindowExecutionTask(_ input: GetMaintenanceWindowExecutionTaskRequest) throws -> GetMaintenanceWindowExecutionTaskResult {
        return try client.send(operation: "GetMaintenanceWindowExecutionTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the Maintenance Windows in an AWS account.
    public func describeMaintenanceWindows(_ input: DescribeMaintenanceWindowsRequest) throws -> DescribeMaintenanceWindowsResult {
        return try client.send(operation: "DescribeMaintenanceWindows", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified SSM document with the specified instances or targets. When you associate an SSM document with one or more instances using instance IDs or tags, the SSM agent running on the instance processes the document and configures the instance as specified. If you associate a document with an instance that already has an associated document, the system throws the AssociationAlreadyExists exception.
    public func createAssociationBatch(_ input: CreateAssociationBatchRequest) throws -> CreateAssociationBatchResult {
        return try client.send(operation: "CreateAssociationBatch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers your on-premises server or virtual machine with Amazon EC2 so that you can manage these resources using Run Command. An on-premises server or virtual machine that has been registered with EC2 is called a managed instance. For more information about activations, see Setting Up Managed Instances (Linux) or Setting Up Managed Instances (Windows) in the Amazon EC2 User Guide. 
    public func createActivation(_ input: CreateActivationRequest) throws -> CreateActivationResult {
        return try client.send(operation: "CreateActivation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the associations for the specified SSM document or instance.
    public func listAssociations(_ input: ListAssociationsRequest) throws -> ListAssociationsResult {
        return try client.send(operation: "ListAssociations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a patch baseline.
    public func createPatchBaseline(_ input: CreatePatchBaselineRequest) throws -> CreatePatchBaselineResult {
        return try client.send(operation: "CreatePatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a new task to a Maintenance Window.
    public func registerTaskWithMaintenanceWindow(_ input: RegisterTaskWithMaintenanceWindowRequest) throws -> RegisterTaskWithMaintenanceWindowResult {
        return try client.send(operation: "RegisterTaskWithMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the tags assigned to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> ListTagsForResourceResult {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the commands requested by users of the AWS account.
    public func listCommands(_ input: ListCommandsRequest) throws -> ListCommandsResult {
        return try client.send(operation: "ListCommands", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a task from a Maintenance Window.
    public func deregisterTaskFromMaintenanceWindow(_ input: DeregisterTaskFromMaintenanceWindowRequest) throws -> DeregisterTaskFromMaintenanceWindowResult {
        return try client.send(operation: "DeregisterTaskFromMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the individual task executions (one per target) for a particular task executed as part of a Maintenance Window execution.
    public func describeMaintenanceWindowExecutionTaskInvocations(_ input: DescribeMaintenanceWindowExecutionTaskInvocationsRequest) throws -> DescribeMaintenanceWindowExecutionTaskInvocationsResult {
        return try client.send(operation: "DescribeMaintenanceWindowExecutionTaskInvocations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Query inventory information.
    public func getInventory(_ input: GetInventoryRequest) throws -> GetInventoryResult {
        return try client.send(operation: "GetInventory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or overwrites one or more tags for the specified resource. Tags are metadata that you assign to your managed instances. Tags enable you to categorize your managed instances in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. For example, you could define a set of tags for your account's managed instances that helps you track each instance's owner and stack level. For example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or Test. Each resource can have a maximum of 10 tags.  We recommend that you devise a set of tag keys that meets your needs for each resource type. Using a consistent set of tag keys makes it easier for you to manage your resources. You can search and filter the resources based on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and are interpreted strictly as a string of characters.  For more information about tags, see Tagging Your Amazon EC2 Resources in the Amazon EC2 User Guide. 
    public func addTagsToResource(_ input: AddTagsToResourceRequest) throws -> AddTagsToResourceResult {
        return try client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the server or virtual machine from the list of registered servers. You can reregister the instance again at any time. If you don’t plan to use Run Command on the server, we suggest uninstalling the SSM agent first.
    public func deregisterManagedInstance(_ input: DeregisterManagedInstanceRequest) throws -> DeregisterManagedInstanceResult {
        return try client.send(operation: "DeregisterManagedInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get detailed information about a particular Automation execution.
    public func getAutomationExecution(_ input: GetAutomationExecutionRequest) throws -> GetAutomationExecutionResult {
        return try client.send(operation: "GetAutomationExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the targets registered with the Maintenance Window.
    public func describeMaintenanceWindowTargets(_ input: DescribeMaintenanceWindowTargetsRequest) throws -> DescribeMaintenanceWindowTargetsResult {
        return try client.send(operation: "DescribeMaintenanceWindowTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Details about the activation, including: the date and time the activation was created, the expiration date, the IAM role assigned to the instances in the activation, and the number of instances activated by this registration.
    public func describeActivations(_ input: DescribeActivationsRequest) throws -> DescribeActivationsResult {
        return try client.send(operation: "DescribeActivations", path: "/", httpMethod: "POST", input: input)
    }

    ///  All associations for the instance(s).
    public func describeEffectiveInstanceAssociations(_ input: DescribeEffectiveInstanceAssociationsRequest) throws -> DescribeEffectiveInstanceAssociationsResult {
        return try client.send(operation: "DescribeEffectiveInstanceAssociations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your SSM documents.
    public func listDocuments(_ input: ListDocumentsRequest) throws -> ListDocumentsResult {
        return try client.send(operation: "ListDocuments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stop an Automation that is currently executing.
    public func stopAutomationExecution(_ input: StopAutomationExecutionRequest) throws -> StopAutomationExecutionResult {
        return try client.send(operation: "StopAutomationExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get a list of parameters used by the AWS account.&gt;
    public func getParameters(_ input: GetParametersRequest) throws -> GetParametersResult {
        return try client.send(operation: "GetParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete a parameter from the system.
    public func deleteParameter(_ input: DeleteParameterRequest) throws -> DeleteParameterResult {
        return try client.send(operation: "DeleteParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the high-level patch state of one or more instances.
    public func describeInstancePatchStates(_ input: DescribeInstancePatchStatesRequest) throws -> DescribeInstancePatchStatesResult {
        return try client.send(operation: "DescribeInstancePatchStates", path: "/", httpMethod: "POST", input: input)
    }

    ///  The document you want to update.
    public func updateDocument(_ input: UpdateDocumentRequest) throws -> UpdateDocumentResult {
        return try client.send(operation: "UpdateDocument", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to cancel the command specified by the Command ID. There is no guarantee that the command will be terminated and the underlying process stopped.
    public func cancelCommand(_ input: CancelCommandRequest) throws -> CancelCommandResult {
        return try client.send(operation: "CancelCommand", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing patch baseline. Fields not specified in the request are left unchanged.
    public func updatePatchBaseline(_ input: UpdatePatchBaselineRequest) throws -> UpdatePatchBaselineResult {
        return try client.send(operation: "UpdatePatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates execution of an Automation document.
    public func startAutomationExecution(_ input: StartAutomationExecutionRequest) throws -> StartAutomationExecutionResult {
        return try client.send(operation: "StartAutomationExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the status of the SSM document associated with the specified instance.
    public func updateAssociationStatus(_ input: UpdateAssociationStatusRequest) throws -> UpdateAssociationStatusResult {
        return try client.send(operation: "UpdateAssociationStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a Maintenance Window.
    public func deleteMaintenanceWindow(_ input: DeleteMaintenanceWindowRequest) throws -> DeleteMaintenanceWindowResult {
        return try client.send(operation: "DeleteMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the contents of the specified SSM document.
    public func getDocument(_ input: GetDocumentRequest) throws -> GetDocumentResult {
        return try client.send(operation: "GetDocument", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes all tags from the specified resource.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceRequest) throws -> RemoveTagsFromResourceResult {
        return try client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Share a document publicly or privately. If you share a document privately, you must specify the AWS user account IDs for those people who can use the document. If you share a document publicly, you must specify All as the account ID.
    public func modifyDocumentPermission(_ input: ModifyDocumentPermissionRequest) throws -> ModifyDocumentPermissionResponse {
        return try client.send(operation: "ModifyDocumentPermission", path: "/", httpMethod: "POST", input: input)
    }

    ///  Defines the default patch baseline.
    public func registerDefaultPatchBaseline(_ input: RegisterDefaultPatchBaselineRequest) throws -> RegisterDefaultPatchBaselineResult {
        return try client.send(operation: "RegisterDefaultPatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an SSM document. After you create an SSM document, you can use CreateAssociation to associate it with one or more running instances.
    public func createDocument(_ input: CreateDocumentRequest) throws -> CreateDocumentResult {
        return try client.send(operation: "CreateDocument", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the patch baselines in your AWS account.
    public func describePatchBaselines(_ input: DescribePatchBaselinesRequest) throws -> DescribePatchBaselinesResult {
        return try client.send(operation: "DescribePatchBaselines", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns high-level aggregated patch compliance state for a patch group.
    public func describePatchGroupState(_ input: DescribePatchGroupStateRequest) throws -> DescribePatchGroupStateResult {
        return try client.send(operation: "DescribePatchGroupState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a Maintenance Window.
    public func getMaintenanceWindow(_ input: GetMaintenanceWindowRequest) throws -> GetMaintenanceWindowResult {
        return try client.send(operation: "GetMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves details about a specific task executed as part of a Maintenance Window execution.
    public func getMaintenanceWindowExecution(_ input: GetMaintenanceWindowExecutionRequest) throws -> GetMaintenanceWindowExecutionResult {
        return try client.send(operation: "GetMaintenanceWindowExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers a target with a Maintenance Window.
    public func registerTargetWithMaintenanceWindow(_ input: RegisterTargetWithMaintenanceWindowRequest) throws -> RegisterTargetWithMaintenanceWindowResult {
        return try client.send(operation: "RegisterTargetWithMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the high-level patch state for the instances in the specified patch group.
    public func describeInstancePatchStatesForPatchGroup(_ input: DescribeInstancePatchStatesForPatchGroupRequest) throws -> DescribeInstancePatchStatesForPatchGroupResult {
        return try client.send(operation: "DescribeInstancePatchStatesForPatchGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a patch group from a patch baseline.
    public func deregisterPatchBaselineForPatchGroup(_ input: DeregisterPatchBaselineForPatchGroupRequest) throws -> DeregisterPatchBaselineForPatchGroupResult {
        return try client.send(operation: "DeregisterPatchBaselineForPatchGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an association. You can only update the document version, schedule, parameters, and Amazon S3 output of an association.
    public func updateAssociation(_ input: UpdateAssociationRequest) throws -> UpdateAssociationResult {
        return try client.send(operation: "UpdateAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the patch baseline that should be used for the specified patch group.
    public func getPatchBaselineForPatchGroup(_ input: GetPatchBaselineForPatchGroupRequest) throws -> GetPatchBaselineForPatchGroupResult {
        return try client.send(operation: "GetPatchBaselineForPatchGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  A list of inventory items returned by the request.
    public func listInventoryEntries(_ input: ListInventoryEntriesRequest) throws -> ListInventoryEntriesResult {
        return try client.send(operation: "ListInventoryEntries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new Maintenance Window.
    public func createMaintenanceWindow(_ input: CreateMaintenanceWindowRequest) throws -> CreateMaintenanceWindowResult {
        return try client.send(operation: "CreateMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified SSM document from the specified instance. When you disassociate an SSM document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.
    public func deleteAssociation(_ input: DeleteAssociationRequest) throws -> DeleteAssociationResult {
        return try client.send(operation: "DeleteAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Assigns or changes an Amazon Identity and Access Management (IAM) role to the managed instance.
    public func updateManagedInstanceRole(_ input: UpdateManagedInstanceRoleRequest) throws -> UpdateManagedInstanceRoleResult {
        return try client.send(operation: "UpdateManagedInstanceRole", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the SSM document and all instance associations to the document. Before you delete the SSM document, we recommend that you use DeleteAssociation to disassociate all instances that are associated with the document.
    public func deleteDocument(_ input: DeleteDocumentRequest) throws -> DeleteDocumentResult {
        return try client.send(operation: "DeleteDocument", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified SSM document with the specified instances or targets. When you associate an SSM document with one or more instances using instance IDs or tags, the SSM agent running on the instance processes the document and configures the instance as specified. If you associate a document with an instance that already has an associated document, the system throws the AssociationAlreadyExists exception.
    public func createAssociation(_ input: CreateAssociationRequest) throws -> CreateAssociationResult {
        return try client.send(operation: "CreateAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the permissions for an SSM document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user’s AWS account ID) or publicly (All). 
    public func describeDocumentPermission(_ input: DescribeDocumentPermissionRequest) throws -> DescribeDocumentPermissionResponse {
        return try client.send(operation: "DescribeDocumentPermission", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns detailed information about command execution for an invocation or plugin. 
    public func getCommandInvocation(_ input: GetCommandInvocationRequest) throws -> GetCommandInvocationResult {
        return try client.send(operation: "GetCommandInvocation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tasks in a Maintenance Window.
    public func describeMaintenanceWindowTasks(_ input: DescribeMaintenanceWindowTasksRequest) throws -> DescribeMaintenanceWindowTasksResult {
        return try client.send(operation: "DescribeMaintenanceWindowTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Set the default version of a document. 
    public func updateDocumentDefaultVersion(_ input: UpdateDocumentDefaultVersionRequest) throws -> UpdateDocumentDefaultVersionResult {
        return try client.send(operation: "UpdateDocumentDefaultVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.
    public func describeInstancePatches(_ input: DescribeInstancePatchesRequest) throws -> DescribeInstancePatchesResult {
        return try client.send(operation: "DescribeInstancePatches", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a patch baseline.
    public func deletePatchBaseline(_ input: DeletePatchBaselineRequest) throws -> DeletePatchBaselineResult {
        return try client.send(operation: "DeletePatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Add one or more paramaters to the system.
    public func putParameter(_ input: PutParameterRequest) throws -> PutParameterResult {
        return try client.send(operation: "PutParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all patch groups that have been registered with patch baselines.
    public func describePatchGroups(_ input: DescribePatchGroupsRequest) throws -> DescribePatchGroupsResult {
        return try client.send(operation: "DescribePatchGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.
    public func putInventory(_ input: PutInventoryRequest) throws -> PutInventoryResult {
        return try client.send(operation: "PutInventory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides details about all active and terminated Automation executions.
    public func describeAutomationExecutions(_ input: DescribeAutomationExecutionsRequest) throws -> DescribeAutomationExecutionsResult {
        return try client.send(operation: "DescribeAutomationExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a patch baseline.
    public func getPatchBaseline(_ input: GetPatchBaselineRequest) throws -> GetPatchBaselineResult {
        return try client.send(operation: "GetPatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a target from a Maintenance Window.
    public func deregisterTargetFromMaintenanceWindow(_ input: DeregisterTargetFromMaintenanceWindowRequest) throws -> DeregisterTargetFromMaintenanceWindowResult {
        return try client.send(operation: "DeregisterTargetFromMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an activation. You are not required to delete an activation. If you delete an activation, you can no longer use it to register additional managed instances. Deleting an activation does not de-register managed instances. You must manually de-register managed instances.
    public func deleteActivation(_ input: DeleteActivationRequest) throws -> DeleteActivationResult {
        return try client.send(operation: "DeleteActivation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the executions of a Maintenance Window (meaning, information about when the Maintenance Window was scheduled to be active and information about tasks registered and run with the Maintenance Window).
    public func describeMaintenanceWindowExecutions(_ input: DescribeMaintenanceWindowExecutionsRequest) throws -> DescribeMaintenanceWindowExecutionsResult {
        return try client.send(operation: "DescribeMaintenanceWindowExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  For a given Maintenance Window execution, lists the tasks that were executed.
    public func describeMaintenanceWindowExecutionTasks(_ input: DescribeMaintenanceWindowExecutionTasksRequest) throws -> DescribeMaintenanceWindowExecutionTasksResult {
        return try client.send(operation: "DescribeMaintenanceWindowExecutionTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Query a list of all parameters used by the AWS account.
    public func getParameterHistory(_ input: GetParameterHistoryRequest) throws -> GetParameterHistoryResult {
        return try client.send(operation: "GetParameterHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type. 
    public func getInventorySchema(_ input: GetInventorySchemaRequest) throws -> GetInventorySchemaResult {
        return try client.send(operation: "GetInventorySchema", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing Maintenance Window. Only specified parameters are modified.
    public func updateMaintenanceWindow(_ input: UpdateMaintenanceWindowRequest) throws -> UpdateMaintenanceWindowResult {
        return try client.send(operation: "UpdateMaintenanceWindow", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get information about a parameter.
    public func describeParameters(_ input: DescribeParametersRequest) throws -> DescribeParametersResult {
        return try client.send(operation: "DescribeParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline.
    public func describeEffectivePatchesForPatchBaseline(_ input: DescribeEffectivePatchesForPatchBaselineRequest) throws -> DescribeEffectivePatchesForPatchBaselineResult {
        return try client.send(operation: "DescribeEffectivePatchesForPatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  The status of the associations for the instance(s).
    public func describeInstanceAssociationsStatus(_ input: DescribeInstanceAssociationsStatusRequest) throws -> DescribeInstanceAssociationsStatusResult {
        return try client.send(operation: "DescribeInstanceAssociationsStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Executes commands on one or more remote instances.
    public func sendCommand(_ input: SendCommandRequest) throws -> SendCommandResult {
        return try client.send(operation: "SendCommand", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your instances. You can use this to get information about instances like the operating system platform, the SSM agent version (Linux), status etc. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error. 
    public func describeInstanceInformation(_ input: DescribeInstanceInformationRequest) throws -> DescribeInstanceInformationResult {
        return try client.send(operation: "DescribeInstanceInformation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the default patch baseline.
    public func getDefaultPatchBaseline(_ input: GetDefaultPatchBaselineRequest) throws -> GetDefaultPatchBaselineResult {
        return try client.send(operation: "GetDefaultPatchBaseline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified SSM document.
    public func describeDocument(_ input: DescribeDocumentRequest) throws -> DescribeDocumentResult {
        return try client.send(operation: "DescribeDocument", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers a patch baseline for a patch group.
    public func registerPatchBaselineForPatchGroup(_ input: RegisterPatchBaselineForPatchGroupRequest) throws -> RegisterPatchBaselineForPatchGroupResult {
        return try client.send(operation: "RegisterPatchBaselineForPatchGroup", path: "/", httpMethod: "POST", input: input)
    }


}