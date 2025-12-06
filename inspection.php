<?php
$page = 'inspections';
include 'includes/header.php';
?>

<h2 class="section-title">Inspection Schedule</h2>

<div class="search-bar">
    <input type="date">
    <button class="btn">Filter</button>
    <button class="btn" onclick="openModal('addInspectionModal')">+ Schedule Inspection</button>
</div>

<table class="data-table">
    <thead>
    <tr>
        <th>Date & Time</th>
        <th>Property</th>
        <th>Inspector</th>
        <th>Clients Attending</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>2024-12-05 14:00</td>
        <td>123 Main Street, NY</td>
        <td>John Smith</td>
        <td>2</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    </tbody>
</table>

<div id="addInspectionModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Schedule Inspection</h2>
            <button class="close-btn" onclick="closeModal('addInspectionModal')">&times;</button>
        </div>
        <div class="form-group">
            <label>Date & Time</label>
            <input type="datetime-local">
        </div>
        <div class="form-group">
            <label>Property</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Inspector</label>
            <input type="text">
        </div>
        <div class="form-actions">
            <button class="btn-secondary" onclick="closeModal('addInspectionModal')">Cancel</button>
            <button class="btn">Save</button>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
