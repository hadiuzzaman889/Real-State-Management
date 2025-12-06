<?php
// which page is active? (set $page before including this file)
if (!isset($page)) {
    $page = '';
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Real Estate Management System</title>
    <style>
        * { margin:0; padding:0; box-sizing:border-box; }

        body {
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
            min-height:100vh;
        }

        .container {
            max-width:1400px;
            margin:0 auto;
            padding:20px;
        }

        header {
            background:#fff;
            padding:20px 30px;
            border-radius:15px;
            box-shadow:0 10px 30px rgba(0,0,0,0.2);
            margin-bottom:30px;
            display:flex;
            justify-content:space-between;
            align-items:center;
        }

        header h1 { color:#667eea; font-size:28px; }

        .user-info { display:flex; align-items:center; gap:15px; }
        .user-info span { color:#666; }

        .btn {
            padding:12px 25px;
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
            color:#fff;
            border:none;
            border-radius:8px;
            cursor:pointer;
            font-size:14px;
            transition:transform .2s, box-shadow .2s;
            white-space:nowrap;
        }
        .btn:hover {
            transform:translateY(-2px);
            box-shadow:0 5px 15px rgba(102,126,234,0.4);
        }

        .dashboard {
            display:grid;
            grid-template-columns:250px 1fr;
            gap:20px;
        }

        .sidebar {
            background:#fff;
            padding:20px;
            border-radius:15px;
            box-shadow:0 10px 30px rgba(0,0,0,0.2);
            height:fit-content;
        }

        .nav-menu { list-style:none; }
        .nav-menu li { margin-bottom:10px; }

        .nav-menu a {
            display:flex;
            align-items:center;
            gap:10px;
            width:100%;
            padding:12px 15px;
            background:#f8f9fa;
            border-radius:8px;
            text-decoration:none;
            font-size:14px;
            color:#333;
            transition:all .3s;
        }

        .nav-menu a:hover,
        .nav-menu a.active {
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
            color:#fff;
            transform:translateX(5px);
        }

        .main-content {
            background:#fff;
            padding:30px;
            border-radius:15px;
            box-shadow:0 10px 30px rgba(0,0,0,0.2);
        }

        .section-title {
            font-size:24px;
            color:#333;
            margin-bottom:20px;
            padding-bottom:10px;
            border-bottom:2px solid #667eea;
        }

        .stats-grid {
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
            gap:20px;
            margin-bottom:30px;
        }

        .stat-card {
            background:linear-gradient(135deg,#667eea 0%,#764ba2 100%);
            padding:25px;
            border-radius:12px;
            color:#fff;
            box-shadow:0 5px 15px rgba(102,126,234,0.4);
        }

        .stat-card h3 {
            font-size:14px;
            font-weight:500;
            opacity:.9;
            margin-bottom:10px;
        }
        .stat-card .value { font-size:32px; font-weight:bold; margin-bottom:5px; }
        .stat-card .change { font-size:12px; opacity:.8; }

        .search-bar {
            display:flex;
            gap:10px;
            margin-bottom:20px;
            flex-wrap:wrap;
        }
        .search-bar input,
        .search-bar select {
            flex:1;
            min-width:180px;
            padding:12px 20px;
            border:2px solid #e0e0e0;
            border-radius:8px;
            font-size:14px;
        }

        .data-table {
            width:100%;
            border-collapse:collapse;
            margin-top:20px;
        }
        .data-table thead { background:#f8f9fa; }
        .data-table th {
            padding:15px;
            text-align:left;
            font-weight:600;
            color:#333;
            border-bottom:2px solid #e0e0e0;
        }
        .data-table td {
            padding:15px;
            border-bottom:1px solid #f0f0f0;
            color:#666;
        }
        .data-table tr:hover { background:#f8f9fa; }

        .badge {
            padding:5px 12px;
            border-radius:20px;
            font-size:12px;
            font-weight:600;
        }
        .badge.active { background:#d4edda; color:#155724; }
        .badge.pending { background:#fff3cd; color:#856404; }
        .badge.sold { background:#f8d7da; color:#721c24; }

        .action-buttons {
            display:flex;
            gap:8px;
            flex-wrap:wrap;
        }
        .action-buttons button {
            padding:6px 12px;
            border:none;
            border-radius:5px;
            cursor:pointer;
            font-size:12px;
            transition:all .2s;
        }
        .btn-view { background:#28a745; color:#fff; }
        .btn-edit { background:#17a2b8; color:#fff; }
        .btn-delete { background:#dc3545; color:#fff; }
        .action-buttons button:hover { opacity:.85; transform:scale(1.05); }

        .property-card {
            border:1px solid #e0e0e0;
            border-radius:10px;
            padding:20px;
            margin-bottom:15px;
            transition:all .3s;
        }
        .property-card:hover {
            box-shadow:0 5px 15px rgba(0,0,0,0.1);
            transform:translateY(-5px);
        }
        .property-header {
            display:flex;
            justify-content:space-between;
            align-items:flex-start;
            margin-bottom:15px;
        }
        .property-price { font-size:24px; font-weight:bold; color:#667eea; }
        .property-details {
            display:grid;
            grid-template-columns:repeat(3,1fr);
            gap:10px;
            margin-top:15px;
        }
        .detail-item {
            display:flex;
            align-items:center;
            gap:5px;
            color:#666;
            font-size:14px;
        }

        /* modal */
        .modal {
            display:none;
            position:fixed;
            inset:0;
            background:rgba(0,0,0,.5);
            z-index:1000;
            justify-content:center;
            align-items:center;
        }
        .modal.active { display:flex; }
        .modal-content {
            background:#fff;
            padding:30px;
            border-radius:15px;
            max-width:600px;
            width:90%;
            max-height:90vh;
            overflow-y:auto;
        }
        .modal-header {
            display:flex;
            justify-content:space-between;
            align-items:center;
            margin-bottom:20px;
        }
        .modal-header h2 { color:#667eea; }
        .close-btn {
            background:none;
            border:none;
            font-size:24px;
            cursor:pointer;
            color:#999;
        }
        .form-group { margin-bottom:15px; }
        .form-group label {
            display:block;
            margin-bottom:5px;
            color:#333;
            font-weight:500;
        }
        .form-group input,
        .form-group select,
        .form-group textarea {
            width:100%;
            padding:10px;
            border:2px solid #e0e0e0;
            border-radius:8px;
            font-size:14px;
        }
        .form-group textarea { resize:vertical; min-height:80px; }
        .form-actions {
            display:flex;
            justify-content:flex-end;
            gap:10px;
            margin-top:10px;
        }
        .btn-secondary {
            background:#6c757d;
            color:#fff;
            padding:10px 20px;
            border-radius:8px;
            border:none;
            cursor:pointer;
        }

        @media (max-width:768px){
            .dashboard { grid-template-columns:1fr; }
            .stats-grid { grid-template-columns:1fr; }
            .property-details { grid-template-columns:1fr; }
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <h1>🏠 Real Estate Management System</h1>
        <div class="user-info">
            <span>Welcome, <strong>Admin</strong></span>
            <button class="btn">Logout</button>
        </div>
    </header>

    <div class="dashboard">
        <aside class="sidebar">
            <ul class="nav-menu">
                <li><a href="index.php"      class="<?php echo $page=='dashboard' ? 'active' : ''; ?>">📊 Dashboard</a></li>
                <li><a href="property.php"   class="<?php echo $page=='properties' ? 'active' : ''; ?>">🏘️ Properties</a></li>
                <li><a href="client.php"     class="<?php echo $page=='clients' ? 'active' : ''; ?>">👥 Clients</a></li>
                <li><a href="listing.php"    class="<?php echo $page=='listings' ? 'active' : ''; ?>">📋 Listings</a></li>
                <li><a href="inspection.php" class="<?php echo $page=='inspections' ? 'active' : ''; ?>">🔍 Inspections</a></li>
                <li><a href="offer.php"      class="<?php echo $page=='offers' ? 'active' : ''; ?>">💰 Offers</a></li>
                <li><a href="contract.php"   class="<?php echo $page=='contracts' ? 'active' : ''; ?>">📄 Contracts</a></li>
                <li><a href="employee.php"   class="<?php echo $page=='employees' ? 'active' : ''; ?>">👔 Employees</a></li>
                <li><a href="reports.php"    class="<?php echo $page=='reports' ? 'active' : ''; ?>">📈 Reports</a></li>
            </ul>
        </aside>

        <main class="main-content">
