<?php
$page = 'employees';
include 'includes/header.php';
?>

<h2 class="section-title">Employee Management</h2>

<div class="search-bar">
    <input type="text" placeholder="Search employees...">
    <button class="btn">Search</button>
    <button class="btn" onclick="openModal('addEmployeeModal')">+ Add Employee</button>
</div>

<table class="data-table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Job Title</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Properties Managed</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>John Smith</td>
        <td>Senior Sales Agent</td>
        <td>john.smith@realestate.com</td>
        <td>+1 234 567 890</td>
        <td>15</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    <tr>
        <td>Sarah Johnson</td>
        <td>Property Manager</td>
        <td>sarah.johnson@realestate.com</td>
        <td>+1 234 567 891</td>
        <td>12</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    </tbody>
</table>

<div id="addEmployeeModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Add Employee</h2>
            <button class="close-btn" onclick="closeModal('addEmployeeModal')">&times;</button>
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Job Title</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email">
        </div>
        <div class="form-actions">
            <button class="btn-secondary" onclick="closeModal('addEmployeeModal')">Cancel</button>
            <button class="btn">Save</button>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
