<?php
$page = 'listings';
include 'includes/header.php';
?>

<h2 class="section-title">Listing Management</h2>

<div class="search-bar">
    <input type="text" placeholder="Search listings...">
    <select>
        <option>All Status</option>
        <option>Active</option>
        <option>Pending</option>
        <option>Sold</option>
    </select>
    <button class="btn">Search</button>
    <button class="btn" onclick="openModal('addListingModal')">+ Add Listing</button>
</div>

<table class="data-table">
    <thead>
    <tr>
        <th>Property</th>
        <th>Type</th>
        <th>Price</th>
        <th>Status</th>
        <th>Created Date</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>123 Main Street, NY</td>
        <td>Sale</td>
        <td>$450,000</td>
        <td><span class="badge active">Active</span></td>
        <td>2024-01-15</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    <tr>
        <td>789 Pine Road, Chicago</td>
        <td>Rent</td>
        <td>$2,500/mo</td>
        <td><span class="badge active">Active</span></td>
        <td>2024-02-10</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    </tbody>
</table>

<div id="addListingModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Add Listing</h2>
            <button class="close-btn" onclick="closeModal('addListingModal')">&times;</button>
        </div>
        <div class="form-group">
            <label>Property</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Type</label>
            <select>
                <option>Sale</option>
                <option>Rent</option>
            </select>
        </div>
        <div class="form-group">
            <label>Price</label>
            <input type="text">
        </div>
        <div class="form-actions">
            <button class="btn-secondary" onclick="closeModal('addListingModal')">Cancel</button>
            <button class="btn">Save</button>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
