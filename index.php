<?php
$page = 'dashboard';
include 'includes/header.php';
?>

<h2 class="section-title">Dashboard Overview</h2>

<div class="stats-grid">
    <div class="stat-card">
        <h3>Active Listings</h3>
        <div class="value">247</div>
        <div class="change">↑ 12% from last month</div>
    </div>
    <div class="stat-card">
        <h3>Total Clients</h3>
        <div class="value">1,834</div>
        <div class="change">↑ 8% from last month</div>
    </div>
    <div class="stat-card">
        <h3>Pending Offers</h3>
        <div class="value">43</div>
        <div class="change">↑ 5% from last month</div>
    </div>
    <div class="stat-card">
        <h3>Monthly Revenue</h3>
        <div class="value">$2.4M</div>
        <div class="change">↑ 15% from last month</div>
    </div>
</div>

<h3 class="section-title">Recent Properties</h3>

<table class="data-table">
    <thead>
    <tr>
        <th>Address</th>
        <th>Type</th>
        <th>Price</th>
        <th>Status</th>
        <th>Agent</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>123 Main Street, NY</td>
        <td>Apartment</td>
        <td>$450,000</td>
        <td><span class="badge active">Active</span></td>
        <td>John Smith</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    <tr>
        <td>456 Oak Avenue, LA</td>
        <td>House</td>
        <td>$780,000</td>
        <td><span class="badge active">Active</span></td>
        <td>Michael Brown</td>
        <td>
            <div class="action-buttons">
                <button class="btn-view">View</button>
                <button class="btn-edit">Edit</button>
            </div>
        </td>
    </tr>
    <tr>
        <td>789 Pine Road, Chicago</td>
        <td>Townhouse</td>
        <td>$520,000</td>
        <td><span class="badge pending">Pending</span></td>
        <td>Emily Davis</td>
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
