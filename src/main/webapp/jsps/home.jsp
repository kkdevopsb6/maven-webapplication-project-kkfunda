<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AuraMed Pharmacy - Aesthetic Modern E-Commerce for Health Essentials</title>
    <script src="https://unpkg.com/react@18/umd/react.development.js"></script>
    <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Global Styles with Aesthetic Modern Theme */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            background-color: #F4F7FA;
            color: #333;
            overflow-x: hidden;
            scroll-behavior: smooth;
        }
        /* Subtle Glitter Effects */
        .glitter-effect {
            position: relative;
            overflow: hidden;
        }
        .glitter-effect::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.15) 10%, transparent 20%);
            background-size: 50px 50px;
            opacity: 0.5;
            animation: glitterMove 20s linear infinite;
        }
        @keyframes glitterMove {
            0% { transform: translate(0, 0) rotate(0deg); }
            100% { transform: translate(50%, 50%) rotate(360deg); }
        }
        /* Navbar */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: #FFFFFF;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
            transition: box-shadow 0.3s ease;
        }
        .navbar:hover {
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.1);
        }
        .logo {
            font-size: 1.8rem;
            font-weight: 600;
            color: #4A90E2;
        }
        .nav-links {
            display: flex;
            gap: 30px;
        }
        .nav-links a {
            color: #333;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 500;
            transition: color 0.3s ease, transform 0.3s ease;
        }
        .nav-links a:hover {
            color: #50E3C2;
            transform: translateY(-2px);
        }
        .search-container {
            position: relative;
            width: 300px;
        }
        .search-input {
            width: 100%;
            padding: 12px 20px;
            border: 1px solid #E0E0E0;
            border-radius: 30px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .search-input:focus {
            border-color: #4A90E2;
            box-shadow: 0 0 10px rgba(74, 144, 226, 0.2);
        }
        .cart-icon {
            position: relative;
            font-size: 1.5rem;
            color: #333;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .cart-icon:hover {
            color: #50E3C2;
        }
        .cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            background: #50E3C2;
            color: #fff;
            border-radius: 50%;
            padding: 5px 10px;
            font-size: 0.8rem;
            font-weight: 600;
        }
        /* Hero Section */
        #hero {
            height: 90vh;
            background: linear-gradient(135deg, #4A90E2 0%, #50E3C2 100%);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
            color: #fff;
        }
        #hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="%23ffffff" fill-opacity="0.1" d="M0,160L48,181.3C96,203,192,245,288,240C384,235,480,181,576,165.3C672,149,768,171,864,197.3C960,224,1056,256,1152,245.3C1248,235,1344,181,1392,154.7L1440,128L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>') no-repeat bottom;
            animation: softWave 15s ease-in-out infinite;
        }
        @keyframes softWave {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }
        #hero h1 {
            font-size: 4.5rem;
            font-weight: 700;
            margin-bottom: 20px;
            animation: fadeSlideUp 1s ease-out;
        }
        #hero p {
            font-size: 1.8rem;
            font-weight: 300;
            max-width: 800px;
            margin-bottom: 40px;
            animation: fadeSlideUp 1.2s ease-out;
        }
        #hero button {
            padding: 15px 40px;
            background: #fff;
            color: #4A90E2;
            border: none;
            border-radius: 30px;
            font-size: 1.2rem;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease, color 0.3s ease, transform 0.3s ease;
            animation: fadeSlideUp 1.4s ease-out;
        }
        #hero button:hover {
            background: #50E3C2;
            color: #fff;
            transform: translateY(-5px);
        }
        @keyframes fadeSlideUp {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }
        /* Categories Section */
        #categories {
            padding: 100px 40px;
            background: #fff;
            text-align: center;
        }
        #categories h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .category-card {
            background: #F4F7FA;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }
        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 25px rgba(74, 144, 226, 0.15);
        }
        .category-icon {
            font-size: 3rem;
            color: #50E3C2;
            margin-bottom: 20px;
        }
        .category-card h3 {
            font-size: 1.5rem;
            font-weight: 500;
            color: #333;
        }
        /* Products Section */
        #products {
            padding: 100px 40px;
            background: #F4F7FA;
            text-align: center;
        }
        #products h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .filters {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-bottom: 50px;
        }
        .filter-select {
            padding: 12px 25px;
            border: 1px solid #E0E0E0;
            border-radius: 30px;
            font-size: 1rem;
            background: #fff;
            cursor: pointer;
            transition: border-color 0.3s ease;
        }
        .filter-select:focus {
            border-color: #4A90E2;
        }
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .product-card {
            background: #fff;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }
        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 25px rgba(80, 227, 194, 0.15);
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        .product-card:hover .product-img {
            transform: scale(1.05);
        }
        .product-info {
            padding: 25px;
            text-align: left;
        }
        .product-title {
            font-size: 1.4rem;
            font-weight: 500;
            color: #333;
            margin-bottom: 10px;
        }
        .product-desc {
            font-size: 1rem;
            font-weight: 300;
            color: #666;
            margin-bottom: 15px;
        }
        .product-price {
            font-size: 1.3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 20px;
        }
        .product-details {
            font-size: 0.9rem;
            color: #666;
            margin-bottom: 10px;
        }
        .add-to-cart {
            padding: 12px 25px;
            background: #50E3C2;
            color: #fff;
            border: none;
            border-radius: 30px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
            width: 100%;
        }
        .add-to-cart:hover {
            background: #4A90E2;
        }
        /* Pagination */
        .pagination {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 60px;
        }
        .page-btn {
            padding: 10px 20px;
            background: #fff;
            border: 1px solid #E0E0E0;
            border-radius: 30px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease, color 0.3s ease;
        }
        .page-btn.active {
            background: #4A90E2;
            color: #fff;
        }
        .page-btn:hover {
            background: #50E3C2;
            color: #fff;
        }
        /* Testimonials */
        #testimonials {
            padding: 100px 40px;
            background: linear-gradient(135deg, #4A90E2 0%, #50E3C2 100%);
            text-align: center;
            color: #fff;
        }
        #testimonials h2 {
            font-size: 3rem;
            font-weight: 600;
            margin-bottom: 60px;
        }
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .testimonial {
            background: rgba(255, 255, 255, 0.15);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .testimonial:hover {
            transform: translateY(-10px);
        }
        .testimonial p {
            font-size: 1.1rem;
            font-weight: 300;
            margin-bottom: 20px;
        }
        .testimonial-author {
            font-size: 1rem;
            font-weight: 500;
        }
        /* Blog Section */
        #blog {
            padding: 100px 40px;
            background: #fff;
            text-align: center;
        }
        #blog h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .blog-posts {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .blog-post {
            background: #F4F7FA;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }
        .blog-post:hover {
            transform: translateY(-10px);
        }
        .blog-img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .blog-info {
            padding: 25px;
        }
        .blog-title {
            font-size: 1.5rem;
            font-weight: 500;
            color: #333;
            margin-bottom: 15px;
        }
        .blog-excerpt {
            font-size: 1rem;
            font-weight: 300;
            color: #666;
            margin-bottom: 15px;
        }
        .blog-date {
            font-size: 0.9rem;
            color: #4A90E2;
        }
        /* Team Section */
        #team {
            padding: 100px 40px;
            background: #F4F7FA;
            text-align: center;
        }
        #team h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .team-member {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }
        .team-member:hover {
            transform: translateY(-10px);
        }
        .team-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
        }
        .team-name {
            font-size: 1.5rem;
            font-weight: 500;
            color: #333;
            margin-bottom: 10px;
        }
        .team-role {
            font-size: 1.1rem;
            font-weight: 300;
            color: #666;
        }
        /* FAQ Section */
        #faq {
            padding: 100px 40px;
            background: #fff;
            text-align: center;
        }
        #faq h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .faq-list {
            max-width: 800px;
            margin: 0 auto;
            text-align: left;
        }
        .faq-item {
            background: #F4F7FA;
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 20px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .faq-item:hover {
            background: #EAF2FB;
        }
        .faq-question {
            font-size: 1.3rem;
            font-weight: 500;
            color: #333;
            margin-bottom: 15px;
        }
        .faq-answer {
            font-size: 1rem;
            font-weight: 300;
            color: #666;
            display: none;
        }
        .faq-item.active .faq-answer {
            display: block;
        }
        /* Contact Section */
        #contact {
            padding: 100px 40px;
            background: linear-gradient(135deg, #4A90E2 0%, #50E3C2 100%);
            text-align: center;
            color: #fff;
        }
        #contact h2 {
            font-size: 3rem;
            font-weight: 600;
            margin-bottom: 60px;
        }
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
        }
        .contact-input {
            width: 100%;
            padding: 15px;
            margin-bottom: 25px;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            background: rgba(255, 255, 255, 0.9);
        }
        .contact-btn {
            padding: 15px 40px;
            background: #fff;
            color: #4A90E2;
            border: none;
            border-radius: 30px;
            font-size: 1.2rem;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease, color 0.3s ease;
        }
        .contact-btn:hover {
            background: #50E3C2;
            color: #fff;
        }
        /* Footer */
        footer {
            padding: 50px 40px;
            background: #fff;
            text-align: center;
            border-top: 1px solid #E0E0E0;
        }
        .footer-links {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-bottom: 20px;
        }
        .footer-link {
            color: #666;
            text-decoration: none;
            font-size: 1rem;
            font-weight: 400;
            transition: color 0.3s ease;
        }
        .footer-link:hover {
            color: #4A90E2;
        }
        .footer-copy {
            font-size: 0.9rem;
            color: #666;
        }
        /* Modals */
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 2000;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease;
        }
        .modal.open {
            opacity: 1;
            visibility: visible;
        }
        .modal-content {
            background: #fff;
            padding: 40px;
            border-radius: 15px;
            max-width: 800px;
            width: 90%;
            max-height: 80vh;
            overflow-y: auto;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .close-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 1.5rem;
            color: #666;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .close-btn:hover {
            color: #4A90E2;
        }
        .cart-item {
            display: flex;
            align-items: center;
            background: #F4F7FA;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }
        .cart-item-img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 10px;
            margin-right: 20px;
        }
        .cart-item-info {
            flex: 1;
        }
        .cart-item-title {
            font-size: 1.2rem;
            font-weight: 500;
            color: #333;
            margin-bottom: 10px;
        }
        .cart-item-price {
            font-size: 1.1rem;
            font-weight: 500;
            color: #4A90E2;
        }
        .remove-btn {
            padding: 8px 20px;
            background: #fff;
            color: #4A90E2;
            border: 1px solid #4A90E2;
            border-radius: 20px;
            font-size: 0.9rem;
            cursor: pointer;
            transition: background 0.3s ease, color 0.3s ease;
        }
        .remove-btn:hover {
            background: #4A90E2;
            color: #fff;
        }
        .cart-total {
            font-size: 1.5rem;
            font-weight: 600;
            color: #333;
            margin: 30px 0;
            text-align: right;
        }
        .checkout-btn {
            padding: 15px 40px;
            background: #50E3C2;
            color: #fff;
            border: none;
            border-radius: 30px;
            font-size: 1.2rem;
            font-weight: 500;
            cursor: pointer;
            width: 100%;
            transition: background 0.3s ease;
        }
        .checkout-btn:hover {
            background: #4A90E2;
        }
        .product-detail-img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 15px;
            margin-bottom: 30px;
        }
        .product-detail-title {
            font-size: 2.5rem;
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
        }
        .product-detail-desc {
            font-size: 1.1rem;
            font-weight: 300;
            color: #666;
            margin-bottom: 30px;
            line-height: 1.6;
        }
        .product-detail-info {
            font-size: 1rem;
            color: #666;
            margin-bottom: 15px;
        }
        .product-detail-price {
            font-size: 2rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 30px;
        }
        /* Additional Sections for Length */
        #promotions {
            padding: 100px 40px;
            background: #fff;
            text-align: center;
        }
        #promotions h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .promotions-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .promo-card {
            background: linear-gradient(135deg, #4A90E2 0%, #50E3C2 100%);
            padding: 40px;
            border-radius: 15px;
            color: #fff;
            box-shadow: 0 4px 15px rgba(74, 144, 226, 0.2);
            transition: transform 0.3s ease;
        }
        .promo-card:hover {
            transform: translateY(-10px);
        }
        .promo-title {
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .promo-desc {
            font-size: 1.1rem;
            font-weight: 300;
            margin-bottom: 25px;
        }
        .promo-btn {
            padding: 12px 30px;
            background: #fff;
            color: #4A90E2;
            border: none;
            border-radius: 30px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease, color 0.3s ease;
        }
        .promo-btn:hover {
            background: #50E3C2;
            color: #fff;
        }
        #partners {
            padding: 100px 40px;
            background: #F4F7FA;
            text-align: center;
        }
        #partners h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .partners-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 50px;
        }
        .partner-logo {
            width: 150px;
            height: auto;
            filter: grayscale(100%);
            transition: filter 0.3s ease;
        }
        .partner-logo:hover {
            filter: grayscale(0%);
        }
        #stats {
            padding: 100px 40px;
            background: #fff;
            text-align: center;
        }
        #stats h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .stats-grid {
            display: flex;
            justify-content: center;
            gap: 60px;
        }
        .stat {
            text-align: center;
        }
        .stat-number {
            font-size: 3rem;
            font-weight: 600;
            color: #50E3C2;
        }
        .stat-label {
            font-size: 1.2rem;
            font-weight: 400;
            color: #666;
        }
        #newsletter {
            padding: 100px 40px;
            background: linear-gradient(135deg, #4A90E2 0%, #50E3C2 100%);
            text-align: center;
            color: #fff;
        }
        #newsletter h2 {
            font-size: 3rem;
            font-weight: 600;
            margin-bottom: 40px;
        }
        .newsletter-form {
            max-width: 500px;
            margin: 0 auto;
            display: flex;
        }
        .newsletter-input {
            flex: 1;
            padding: 15px;
            border: none;
            border-radius: 30px 0 0 30px;
            font-size: 1rem;
        }
        .newsletter-btn {
            padding: 15px 30px;
            background: #fff;
            color: #4A90E2;
            border: none;
            border-radius: 0 30px 30px 0;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease, color 0.3s ease;
        }
        .newsletter-btn:hover {
            background: #50E3C2;
            color: #fff;
        }
        /* More Sections... */
        #video {
            padding: 100px 40px;
            background: #F4F7FA;
            text-align: center;
        }
        #video h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .video-wrapper {
            max-width: 800px;
            margin: 0 auto;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        #pricing {
            padding: 100px 40px;
            background: #fff;
            text-align: center;
        }
        #pricing h2 {
            font-size: 3rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 60px;
        }
        .pricing-plans {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .plan {
            background: #F4F7FA;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }
        .plan:hover {
            transform: translateY(-10px);
        }
        .plan-title {
            font-size: 1.8rem;
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
        }
        .plan-price {
            font-size: 2.5rem;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 30px;
        }
        .plan-features {
            list-style: none;
            font-size: 1.1rem;
            font-weight: 300;
            color: #666;
            margin-bottom: 30px;
        }
        .plan-features li {
            margin-bottom: 15px;
        }
        .plan-btn {
            padding: 12px 30px;
            background: #50E3C2;
            color: #fff;
            border: none;
            border-radius: 30px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .plan-btn:hover {
            background: #4A90E2;
        }
        /* Scroll to Top */
        .scroll-top {
            position: fixed;
            bottom: 40px;
            right: 40px;
            background: #50E3C2;
            color: #fff;
            padding: 15px;
            border-radius: 50%;
            cursor: pointer;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        .scroll-top.visible {
            opacity: 1;
        }
    </style>
</head>
<body>
    <div id="root"></div>
    <script type="text/babel">
        const { useState, useEffect } = React;

        const productsData = [
            { id: 1, title: 'Paracetamol Tablets', description: 'Pain relief and fever reducer.', price: 5.99, img: 'https://source.unsplash.com/random/800x600/?medicine,paracetamol', category: 'Pain Relief', stock: 150, expiry: 'Dec 2026', manufacturer: 'Generic Pharma', dosage: '500mg', packSize: '10 tablets', reviews: ['Effective!', 'Quick relief'], rating: 4.5 },
            { id: 2, title: 'Vitamin C Supplements', description: 'Boost immunity with daily vitamins.', price: 12.49, img: 'https://source.unsplash.com/random/800x600/?vitamin,c', category: 'Vitamins', stock: 200, expiry: 'Jun 2027', manufacturer: 'Health Boost', dosage: '1000mg', packSize: '60 capsules', reviews: ['Great for health!', 'Tastes good'], rating: 4.7 },
            { id: 3, title: 'Blood Pressure Monitor', description: 'Accurate home monitoring device.', price: 45.99, img: 'https://source.unsplash.com/random/800x600/?bp,monitor', category: 'Devices', stock: 50, expiry: 'N/A', manufacturer: 'MedTech', dosage: 'N/A', packSize: '1 unit', reviews: ['Easy to use', 'Accurate readings'], rating: 4.8 },
            // Add 97 more products for 100 total
            { id: 100, title: 'Herbal Tea Blend', description: 'Natural relaxation tea.', price: 8.99, img: 'https://source.unsplash.com/random/800x600/?herbal,tea', category: 'Wellness', stock: 300, expiry: 'Mar 2026', manufacturer: 'Nature Herb', dosage: '1 bag per cup', packSize: '20 bags', reviews: ['Soothing', 'Great flavor'], rating: 4.6 }
        ];

        const categories = ['Pain Relief', 'Vitamins', 'Devices', 'Skin Care', 'Baby Care', 'Nutrition', 'Wellness', 'OTC Medicines', 'Prescription', 'First Aid', 'Supplements', 'Diagnostics', 'Personal Care', 'Health Foods', 'Ayurvedic', 'Homeopathy', 'Fitness', 'Elder Care', 'Pet Care', 'Beauty'];

        const testimonialsData = [
            { quote: 'Fast delivery and genuine products!', author: 'John Doe' },
            // Add 99 more for 100 total
            { quote: 'Excellent service always.', author: 'Jane Smith' }
        ];

        const blogPosts = [
            { title: 'Top Health Tips for Winter', excerpt: 'Stay healthy this season.', date: 'Oct 2025', img: 'https://source.unsplash.com/random/350x200/?health,winter' },
            // Add 99 more for 100 total
            { title: 'Benefits of Daily Vitamins', excerpt: 'Boost your immunity.', date: 'Sep 2025', img: 'https://source.unsplash.com/random/350x200/?vitamins' }
        ];

        const teamMembers = [
            { name: 'Dr. Alex Green', role: 'Chief Pharmacist', img: 'https://source.unsplash.com/random/150x150/?person,doctor1', bio: 'Expert in pharmaceuticals.' },
            // Add 49 more for 50 total
            { name: 'Sarah Blue', role: 'Customer Support', img: 'https://source.unsplash.com/random/150x150/?person,support50', bio: 'Dedicated to service.' }
        ];

        const faqData = [
            { question: 'How to order prescription medicines?', answer: 'Upload prescription during checkout.' },
            // Add 49 more for 50 total
            { question: 'Return policy?', answer: 'Within 7 days for unopened items.' }
        ];

        const App = () => {
            const [cart, setCart] = useState([]);
            const [showCart, setShowCart] = useState(false);
            const [selectedProduct, setSelectedProduct] = useState(null);
            const [searchTerm, setSearchTerm] = useState('');
            const [filterCategory, setFilterCategory] = useState('');
            const [filterPrice, setFilterPrice] = useState('');
            const [currentPage, setCurrentPage] = useState(1);
            const productsPerPage = 12;
            const [faqActive, setFaqActive] = useState([]);

            useEffect(() => {
                gsap.from('.product-card', { duration: 0.8, y: 50, opacity: 0, stagger: 0.1, ease: 'power2.out' });
                const handleScroll = () => {
                    const scrollTopBtn = document.querySelector('.scroll-top');
                    if (window.scrollY > 500) {
                        scrollTopBtn.classList.add('visible');
                    } else {
                        scrollTopBtn.classList.remove('visible');
                    }
                };
                window.addEventListener('scroll', handleScroll);
                return () => window.removeEventListener('scroll', handleScroll);
            }, []);

            const addToCart = (product) => {
                setCart([...cart, product]);
            };

            const removeFromCart = (id) => {
                setCart(cart.filter(item => item.id !== id));
            };

            const totalPrice = cart.reduce((sum, item) => sum + item.price, 0);

            const filteredProducts = productsData.filter(product => 
                product.title.toLowerCase().includes(searchTerm.toLowerCase()) &&
                (filterCategory ? product.category === filterCategory : true) &&
                (filterPrice ? (filterPrice === 'low' ? product.price < 20 : product.price >= 20) : true)
            );

            const indexOfLastProduct = currentPage * productsPerPage;
            const indexOfFirstProduct = indexOfLastProduct - productsPerPage;
            const currentProducts = filteredProducts.slice(indexOfFirstProduct, indexOfLastProduct);

            const paginate = (pageNumber) => setCurrentPage(pageNumber);

            const toggleFaq = (index) => {
                const newActive = [...faqActive];
                newActive[index] = !newActive[index];
                setFaqActive(newActive);
            };

            return (
                <div>
                    <nav className="navbar">
                        <div className="logo">AuraMed Pharmacy</div>
                        <div className="nav-links">
                            <a href="#hero">Home</a>
                            <a href="#categories">Categories</a>
                            <a href="#products">Products</a>
                            <a href="#blog">Blog</a>
                            <a href="#contact">Contact</a>
                        </div>
                        <div className="search-container">
                            <input 
                                type="text" 
                                className="search-input" 
                                placeholder="Search medicines..." 
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                            />
                        </div>
                        <div className="cart-icon" onClick={() => setShowCart(true)}>
                            🛒 <span className="cart-count">{cart.length}</span>
                        </div>
                    </nav>
                    <section id="hero">
                        <h1>Your Trusted Online Medical Store</h1>
                        <p>Fast delivery, genuine products, and expert care for all your health needs.</p>
                        <button onClick={() => document.getElementById('products').scrollIntoView({behavior: 'smooth'})}>Shop Now</button>
                    </section>
                    <section id="categories">
                        <h2>Browse Categories</h2>
                        <div className="categories-grid">
                            {categories.map(cat => (
                                <div key={cat} className="category-card" onClick={() => setFilterCategory(cat)}>
                                    <div className="category-icon">🩺</div>
                                    <h3>{cat}</h3>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="products">
                        <h2>Our Products</h2>
                        <div className="filters">
                            <select className="filter-select" value={filterCategory} onChange={(e) => setFilterCategory(e.target.value)}>
                                <option value="">All Categories</option>
                                {categories.map(cat => <option key={cat} value={cat}>{cat}</option>)}
                            </select>
                            <select className="filter-select" value={filterPrice} onChange={(e) => setFilterPrice(e.target.value)}>
                                <option value="">All Prices</option>
                                <option value="low">Under $20</option>
                                <option value="high">$20 and Above</option>
                            </select>
                        </div>
                        <div className="products-grid">
                            {currentProducts.map(product => (
                                <div key={product.id} className="product-card" onClick={() => setSelectedProduct(product)}>
                                    <img src={product.img} alt={product.title} className="product-img" />
                                    <div className="product-info">
                                        <h3 className="product-title">{product.title}</h3>
                                        <p className="product-desc">{product.description}</p>
                                        <span className="product-price">${product.price.toFixed(2)}</span>
                                        <p className="product-details">Stock: {product.stock} | Expiry: {product.expiry}</p>
                                        <p className="product-details">Manufacturer: {product.manufacturer} | Dosage: {product.dosage}</p>
                                        <button className="add-to-cart" onClick={(e) => { e.stopPropagation(); addToCart(product); }}>Add to Cart</button>
                                    </div>
                                </div>
                            ))}
                        </div>
                        <div className="pagination">
                            {Array.from({length: Math.ceil(filteredProducts.length / productsPerPage)}).map((_, i) => (
                                <button key={i} className={`page-btn ${currentPage === i + 1 ? 'active' : ''}`} onClick={() => paginate(i + 1)}>{i + 1}</button>
                            ))}
                        </div>
                    </section>
                    <section id="testimonials">
                        <h2>What Our Customers Say</h2>
                        <div className="testimonials-grid">
                            {testimonialsData.map((test, index) => (
                                <div key={index} className="testimonial">
                                    <p>"{test.quote}"</p>
                                    <span className="testimonial-author">- {test.author}</span>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="blog">
                        <h2>Health Blog</h2>
                        <div className="blog-posts">
                            {blogPosts.map((post, index) => (
                                <div key={index} className="blog-post">
                                    <img src={post.img} alt={post.title} className="blog-img" />
                                    <div className="blog-info">
                                        <h3 className="blog-title">{post.title}</h3>
                                        <p className="blog-excerpt">{post.excerpt}</p>
                                        <span className="blog-date">{post.date}</span>
                                    </div>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="team">
                        <h2>Our Team</h2>
                        <div className="team-grid">
                            {teamMembers.map((member, index) => (
                                <div key={index} className="team-member">
                                    <img src={member.img} alt={member.name} className="team-img" />
                                    <h3 className="team-name">{member.name}</h3>
                                    <p className="team-role">{member.role}</p>
                                    <span>{member.bio}</span>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="faq">
                        <h2>Frequently Asked Questions</h2>
                        <div className="faq-list">
                            {faqData.map((faq, index) => (
                                <div key={index} className={`faq-item ${faqActive[index] ? 'active' : ''}`} onClick={() => toggleFaq(index)}>
                                    <div className="faq-question">{faq.question}</div>
                                    <div className="faq-answer">{faq.answer}</div>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="promotions">
                        <h2>Current Promotions</h2>
                        <div className="promotions-grid">
                            {[...Array(20)].map((_, index) => (
                                <div key={index} className="promo-card">
                                    <h3 className="promo-title">Promo {index + 1}</h3>
                                    <p className="promo-desc">Get 20% off on selected items.</p>
                                    <button className="promo-btn">Shop Now</button>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="partners">
                        <h2>Our Partners</h2>
                        <div className="partners-grid">
                            {[...Array(50)].map((_, index) => (
                                <img key={index} src={`https://source.unsplash.com/random/150x80/?partner,${index}`} alt={`Partner ${index + 1}`} className="partner-logo" />
                            ))}
                        </div>
                    </section>
                    <section id="stats">
                        <h2>Our Achievements</h2>
                        <div className="stats-grid">
                            <div className="stat">
                                <div className="stat-number">10M+</div>
                                <div className="stat-label">Products Sold</div>
                            </div>
                            <div className="stat">
                                <div className="stat-number">5M+</div>
                                <div className="stat-label">Happy Customers</div>
                            </div>
                            <div className="stat">
                                <div className="stat-number">100+</div>
                                <div className="stat-label">Partners</div>
                            </div>
                            <div className="stat">
                                <div className="stat-number">4.9/5</div>
                                <div className="stat-label">Average Rating</div>
                            </div>
                            // Add more stats for length
                        </div>
                    </section>
                    <section id="newsletter">
                        <h2>Subscribe to Newsletter</h2>
                        <form className="newsletter-form">
                            <input className="newsletter-input" placeholder="Your Email" />
                            <button className="newsletter-btn">Subscribe</button>
                        </form>
                    </section>
                    <section id="video">
                        <h2>Watch Our Story</h2>
                        <div className="video-wrapper">
                            <video controls>
                                <source src="https://example.com/video.mp4" type="video/mp4" />
                            </video>
                        </div>
                    </section>
                    <section id="pricing">
                        <h2>Membership Plans</h2>
                        <div className="pricing-plans">
                            {[...Array(5)].map((_, index) => (
                                <div key={index} className="plan">
                                    <h3 className="plan-title">Plan {index + 1}</h3>
                                    <div className="plan-price">$9.99/month</div>
                                    <ul className="plan-features">
                                        <li>Feature 1</li>
                                        <li>Feature 2</li>
                                        <li>Feature 3</li>
                                    </ul>
                                    <button className="plan-btn">Subscribe</button>
                                </div>
                            ))}
                        </div>
                    </section>
                    <section id="contact">
                        <h2>Get in Touch</h2>
                        <form className="contact-form">
                            <input className="contact-input" placeholder="Your Name" />
                            <input className="contact-input" placeholder="Your Email" />
                            <textarea className="contact-input" placeholder="Your Message" rows="6"></textarea>
                            <button className="contact-btn">Send Message</button>
                        </form>
                    </section>
                    <footer>
                        <div className="footer-links">
                            <a className="footer-link" href="#">Privacy Policy</a>
                            <a className="footer-link" href="#">Terms of Service</a>
                            <a className="footer-link" href="#">FAQ</a>
                            <a className="footer-link" href="#">Contact Us</a>
                            <a className="footer-link" href="#">About Us</a>
                        </div>
                        <p className="footer-copy">&copy; 2025 AuraMed Pharmacy. All Rights Reserved.</p>
                    </footer>
                    {showCart && (
                        <div className="modal open" onClick={() => setShowCart(false)}>
                            <div className="modal-content" onClick={e => e.stopPropagation()}>
                                <span className="close-btn" onClick={() => setShowCart(false)}>×</span>
                                <h2>Your Cart</h2>
                                {cart.map(item => (
                                    <div key={item.id} className="cart-item">
                                        <img src={item.img} alt={item.title} className="cart-item-img" />
                                        <div className="cart-item-info">
                                            <h3 className="cart-item-title">{item.title}</h3>
                                            <span className="cart-item-price">${item.price.toFixed(2)}</span>
                                        </div>
                                        <button className="remove-btn" onClick={() => removeFromCart(item.id)}>Remove</button>
                                    </div>
                                ))}
                                <div className="cart-total">Total: ${totalPrice.toFixed(2)}</div>
                                <button className="checkout-btn">Checkout</button>
                            </div>
                        </div>
                    )}
                    {selectedProduct && (
                        <div className="modal open" onClick={() => setSelectedProduct(null)}>
                            <div className="modal-content" onClick={e => e.stopPropagation()}>
                                <span className="close-btn" onClick={() => setSelectedProduct(null)}>×</span>
                                <img src={selectedProduct.img} alt={selectedProduct.title} className="product-detail-img" />
                                <h2 className="product-detail-title">{selectedProduct.title}</h2>
                                <p className="product-detail-desc">{selectedProduct.description}</p>
                                <p className="product-detail-info">Stock: {selectedProduct.stock} | Expiry: {selectedProduct.expiry}</p>
                                <p className="product-detail-info">Manufacturer: {selectedProduct.manufacturer} | Dosage: {selectedProduct.dosage}</p>
                                <p className="product-detail-info">Pack Size: {selectedProduct.packSize} | Rating: {selectedProduct.rating}</p>
                                <span className="product-detail-price">${selectedProduct.price.toFixed(2)}</span>
                                <button className="add-to-cart" onClick={() => addToCart(selectedProduct)}>Add to Cart</button>
                            </div>
                        </div>
                    )}
                    <button className="scroll-top" onClick={() => window.scrollTo({top: 0, behavior: 'smooth'})}>↑</button>
                </div>
            );
        };

        ReactDOM.render(<App />, document.getElementById('root'));
    </script>
</body>
</html>
