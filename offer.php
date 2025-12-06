<?php
$page = 'offers';
include 'includes/header.php';
?>

<h2 class="section-title">Offer Management</h2>

<div class="search-bar">
    <input type="text" placeholder="Search offers...">
    <select>
        <option>All Status</option>
        <option>Pending</option>
        <option>Accepted</option>
        <option>Rejected</option>
    </select>
    <button class="btn">Search</button>
</div>

<table class="data-table">
    <thead>
    <tr>
        <th>Property</th>
        <th>Client</th>
        <th>Offer Amount</th>
        <th>Asking Price</th>
        <th>Status</th>
        <th>Date</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>123 Main Street, NY</td>
        <td>Robert Taylor</td>
        <td>$440,000</td>
        <td>$450,000</td>
        <td><span class="badge active">Accepted</span></td>
        <td>2024-02-15</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    <tr>
        <td>456 Oak Avenue, LA</td>
        <td>Jennifer Thomas</td>
        <td>$760,000</td>
        <td>$780,000</td>
        <td><span class="badge pending">Pending</span></td>
        <td>2024-03-01</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    </tbody>
</table>

<?php include 'includes/footer.php'; ?>
