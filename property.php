<?php
$page = 'properties';
include 'includes/header.php';
?>

<h2 class="section-title">Property Management</h2>

<div class="search-bar">
    <input type="text" id="propertySearch"
           placeholder="Search properties by address, city, or type...">
    <button class="btn" onclick="openModal('addPropertyModal')">+ Add Property</button>
</div>

<div class="property-card">
    <div class="property-header">
        <div>
            <h3>123 Main Street, Apt 4B</h3>
            <p style="color:#666;">New York, NY 10001</p>
        </div>
        <div class="property-price">$450,000</div>
    </div>
    <p style="color:#666;margin-bottom:10px;">
        Modern apartment in downtown location with city views
    </p>
    <div class="property-details">
        <div class="detail-item">🛏️ 2 Bedrooms</div>
        <div class="detail-item">🛁 2 Bathrooms</div>
        <div class="detail-item">🚗 1 Parking</div>
        <div class="detail-item">📐 1,200 sqft</div>
        <div class="detail-item">🏢 Apartment</div>
        <div class="detail-item">✨ Air Conditioning, Balcony</div>
    </div>
    <div class="action-buttons" style="margin-top:15px;">
        <button class="btn-view">View Details</button>
        <button class="btn-edit">Edit</button>
        <button class="btn-delete">Delete</button>
    </div>
</div>

<div class="property-card">
    <div class="property-header">
        <div>
            <h3>456 Oak Avenue</h3>
            <p style="color:#666;">Los Angeles, CA 90001</p>
        </div>
        <div class="property-price">$780,000</div>
    </div>
    <p style="color:#666;margin-bottom:10px;">
        Spacious family home with large backyard
    </p>
    <div class="property-details">
        <div class="detail-item">🛏️ 4 Bedrooms</div>
        <div class="detail-item">🛁 3 Bathrooms</div>
        <div class="detail-item">🚗 2 Parking</div>
        <div class="detail-item">📐 2,500 sqft</div>
        <div class="detail-item">🏠 House</div>
        <div class="detail-item">✨ Pool, Garden, Garage</div>
    </div>
    <div class="action-buttons" style="margin-top:15px;">
        <button class="btn-view">View Details</button>
        <button class="btn-edit">Edit</button>
        <button class="btn-delete">Delete</button>
    </div>
</div>

<!-- modal only for this page -->
<div id="addPropertyModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Add Property</h2>
            <button class="close-btn" onclick="closeModal('addPropertyModal')">&times;</button>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>City</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Price</label>
            <input type="text">
        </div>
        <div class="form-group">
            <label>Description</label>
            <textarea></textarea>
        </div>
        <div class="form-actions">
            <button class="btn-secondary" onclick="closeModal('addPropertyModal')">Cancel</button>
            <button class="btn">Save</button>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
