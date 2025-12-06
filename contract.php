<?php
$page = 'contracts';
include 'includes/header.php';
?>

<h2 class="section-title">Contract Management</h2>

<div class="search-bar">
    <input type="text" placeholder="Search contracts...">
    <button class="btn">Search</button>
    <button class="btn" onclick="openModal('addContractModal')">+ Add Contract</button>
</div>

<table class="data-table">
    <thead>
    <tr>
        <th>Contract ID</th>
        <th>Property</th>
        <th>Client</th>
        <th>Type</th>
        <th>Amount</th>
        <th>Status</th>
        <th>Start Date</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>#001</td>
        <td>123 Main Street, NY</td>
        <td>Robert Taylor</td>
        <td>Sale</td>
        <td>$440,000</td>
        <td><span class="badge active">Active</span></td>
        <td>2024-03-15</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    </tbody>
</table>

<div id="addContractModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Add Contract</h2>
            <button class="close-btn" onclick="closeModal('addContractModal')">&times;</button>
        </div>
        <div class="form-group">
            <label>Contract ID</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Property</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Client</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Amount</label>
            <input type="text">
        </div>
        <div class="form-actions">
            <button class="btn-secondary" onclick="closeModal('addContractModal')">Cancel</button>
            <button class="btn">Save</button>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
