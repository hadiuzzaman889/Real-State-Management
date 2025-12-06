<?php
$page = 'reports';
include 'includes/header.php';
?>

<h2 class="section-title">Reports & Analytics</h2>

<div class="stats-grid">
    <div class="stat-card">
        <h3>Total Sales This Year</h3>
        <div class="value">$12.5M</div>
        <div class="change">↑ 18% from last year</div>
    </div>
    <div class="stat-card">
        <h3>Average Sale Price</h3>
        <div class="value">$685K</div>
        <div class="change">↑ 7% from last year</div>
    </div>
    <div class="stat-card">
        <h3>Properties Sold</h3>
        <div class="value">156</div>
        <div class="change">↑ 12% from last year</div>
    </div>
    <div class="stat-card">
        <h3>Active Agents</h3>
        <div class="value">24</div>
        <div class="change">→ Same as last month</div>
    </div>
</div>

<h3 class="section-title" style="margin-top:30px;">Generate Reports</h3>

<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:15px;">
    <button class="btn">Sales Report</button>
    <button class="btn">Client Activity</button>
    <button class="btn">Agent Performance</button>
    <button class="btn">Property Analysis</button>
    <button class="btn">Inspection Schedule</button>
    <button class="btn">Financial Summary</button>
</div>

<?php include 'includes/footer.php'; ?>
