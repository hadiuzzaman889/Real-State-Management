<?php
$page = 'clients';
include 'includes/header.php';
?>

<h2 class="section-title">Client Management</h2>

<div class="search-bar">
    <input type="text" placeholder="Search clients by name or email...">
    <button class="btn">Search</button>
    <button class="btn" onclick="openModal('addClientModal')">+ Add Client</button>
</div>

<table class="data-table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Registration Date</th>
        <th>Properties Interested</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Robert Taylor</td>
        <td>robert.taylor@email.com</td>
        <td>+1 987 654 321</td>
        <td>2023-01-10</td>
        <td>3</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    <tr>
        <td>Jennifer Thomas</td>
        <td>jennifer.thomas@email.com</td>
        <td>+1 987 654 322</td>
        <td>2023-02-15</td>
        <td>5</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    </tbody>
</table>

<div id="addClientModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Add Client</h2>
            <button class="close-btn" onclick="closeModal('addClientModal')">&times;</button>
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email">
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text">
        </div>
        <div class="form-actions">
            <button class="btn-secondary" onclick="closeModal('addClientModal')">Cancel</button>
            <button class="btn">Save</button>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
