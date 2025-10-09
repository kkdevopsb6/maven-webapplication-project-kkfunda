<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AuraMed Pharmacy - Modern E-Commerce for Health Essentials</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
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
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 2000;
            transition: opacity 0.3s ease;
        }
        .modal.open {
            display: flex;
            opacity: 1;
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
    <nav class="navbar">
        <div class="logo">AuraMed Pharmacy</div>
        <div class="nav-links">
            <a href="#hero">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Products</a>
            <a href="#blog">Blog</a>
            <a href="#contact">Contact</a>
        </div>
        <div class="search-container">
            <input type="text" class="search-input" placeholder="Search medicines..." id="search-input">
        </div>
        <div class="cart-icon" onclick="openCartModal()">
            🛒 <span class="cart-count" id="cart-count">0</span>
        </div>
    </nav>
    <section id="hero" class="glitter-effect">
        <h1>Your Trusted Online Medical Store</h1>
        <p>Fast delivery, genuine products, and expert care for all your health needs.</p>
        <button onclick="document.getElementById('products').scrollIntoView({behavior: 'smooth'})">Shop Now</button>
    </section>
    <section id="categories">
        <h2>Browse Categories</h2>
        <div class="categories-grid" id="categories-grid">
        </div>
    </section>
    <section id="products">
        <h2>Our Products</h2>
        <div class="filters">
            <select class="filter-select" id="category-filter" onchange="filterProducts()">
                <option value="">All Categories</option>
            </select>
            <select class="filter-select" id="price-filter" onchange="filterProducts()">
                <option value="">All Prices</option>
                <option value="low">Under $20</option>
                <option value="high">$20 and Above</option>
            </select>
        </div>
        <div class="products-grid" id="products-grid">
        </div>
        <div class="pagination" id="pagination">
        </div>
    </section>
    <section id="testimonials">
        <h2>What Our Customers Say</h2>
        <div class="testimonials-grid" id="testimonials-grid">
        </div>
    </section>
    <section id="blog">
        <h2>Health Blog</h2>
        <div class="blog-posts" id="blog-posts">
        </div>
    </section>
    <section id="team">
        <h2>Our Team</h2>
        <div class="team-grid" id="team-grid">
        </div>
    </section>
    <section id="faq">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-list" id="faq-list">
        </div>
    </section>
    <section id="promotions">
        <h2>Current Promotions</h2>
        <div class="promotions-grid" id="promotions-grid">
        </div>
    </section>
    <section id="partners">
        <h2>Our Partners</h2>
        <div class="partners-grid" id="partners-grid">
        </div>
    </section>
    <section id="stats">
        <h2>Our Achievements</h2>
        <div class="stats-grid">
            <div class="stat">
                <div class="stat-number">10M+</div>
                <div class="stat-label">Products Sold</div>
            </div>
            <div class="stat">
                <div class="stat-number">5M+</div>
                <div class="stat-label">Happy Customers</div>
            </div>
            <div class="stat">
                <div class="stat-number">100+</div>
                <div class="stat-label">Partners</div>
            </div>
            <div class="stat">
                <div class="stat-number">4.9/5</div>
                <div class="stat-label">Average Rating</div>
            </div>
        </div>
    </section>
    <section id="newsletter">
        <h2>Subscribe to Newsletter</h2>
        <div class="newsletter-form">
            <input class="newsletter-input" placeholder="Your Email">
            <button class="newsletter-btn">Subscribe</button>
        </div>
    </section>
    <section id="video">
        <h2>Watch Our Story</h2>
        <div class="video-wrapper">
            <video controls>
                <source src="https://example.com/video.mp4" type="video/mp4">
            </video>
        </div>
    </section>
    <section id="pricing">
        <h2>Membership Plans</h2>
        <div class="pricing-plans">
            <div class="plan">
                <h3 class="plan-title">Basic Plan</h3>
                <div class="plan-price">$9.99/month</div>
                <ul class="plan-features">
                    <li>Free Shipping</li>
                    <li>10% Discount</li>
                    <li>Basic Support</li>
                </ul>
                <button class="plan-btn">Subscribe</button>
            </div>
            <div class="plan">
                <h3 class="plan-title">Premium Plan</h3>
                <div class="plan-price">$19.99/month</div>
                <ul class="plan-features">
                    <li>Free Express Shipping</li>
                    <li>20% Discount</li>
                    <li>Priority Support</li>
                </ul>
                <button class="plan-btn">Subscribe</button>
            </div>
        </div>
    </section>
    <section id="contact">
        <h2>Get in Touch</h2>
        <div class="contact-form">
            <input class="contact-input" placeholder="Your Name">
            <input class="contact-input" placeholder="Your Email">
            <textarea class="contact-input" placeholder="Your Message" rows="6"></textarea>
            <button class="contact-btn">Send Message</button>
        </div>
    </section>
    <footer>
        <div class="footer-links">
            <a class="footer-link" href="#">Privacy Policy</a>
            <a class="footer-link" href="#">Terms of Service</a>
            <a class="footer-link" href="#">FAQ</a>
            <a class="footer-link" href="#">Contact Us</a>
            <a class="footer-link" href="#">About Us</a>
        </div>
        <p class="footer-copy">&copy; 2025 AuraMed Pharmacy. All Rights Reserved.</p>
    </footer>
    <div class="modal" id="cart-modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeCartModal()">&times;</span>
            <h2>Your Cart</h2>
            <div id="cart-items"></div>
            <div class="cart-total" id="cart-total">Total: $0.00</div>
            <button class="checkout-btn">Checkout</button>
        </div>
    </div>
    <div class="modal" id="product-modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeProductModal()">&times;</span>
            <div id="product-details"></div>
        </div>
    </div>
    <button class="scroll-top" id="scroll-top" onclick="window.scrollTo({top: 0, behavior: 'smooth'})">↑</button>
    <script>
        const productsData = [
            { id: 1, title: 'Paracetamol Tablets', description: 'Pain relief and fever reducer.', price: 5.99, img: 'https://source.unsplash.com/random/800x600/?medicine,paracetamol', category: 'Pain Relief', stock: 150, expiry: 'Dec 2026', manufacturer: 'Generic Pharma', dosage: '500mg', packSize: '10 tablets', reviews: ['Effective!', 'Quick relief'], rating: 4.5 },
            { id: 2, title: 'Vitamin C Supplements', description: 'Boost immunity with daily vitamins.', price: 12.49, img: 'https://source.unsplash.com/random/800x600/?vitamin,c', category: 'Vitamins', stock: 200, expiry: 'Jun 2027', manufacturer: 'Health Boost', dosage: '1000mg', packSize: '60 capsules', reviews: ['Great for health!', 'Tastes good'], rating: 4.7 },
            { id: 3, title: 'Blood Pressure Monitor', description: 'Accurate home monitoring device.', price: 45.99, img: 'https://source.unsplash.com/random/800x600/?bp,monitor', category: 'Devices', stock: 50, expiry: 'N/A', manufacturer: 'MedTech', dosage: 'N/A', packSize: '1 unit', reviews: ['Easy to use', 'Accurate readings'], rating: 4.8 },
            { id: 4, title: 'Herbal Tea Blend', description: 'Natural relaxation tea.', price: 8.99, img: 'https://source.unsplash.com/random/800x600/?herbal,tea', category: 'Wellness', stock: 300, expiry: 'Mar 2026', manufacturer: 'Nature Herb', dosage: '1 bag per cup', packSize: '20 bags', reviews: ['Soothing', 'Great flavor'], rating: 4.6 }
        ];

        const categories = ['Pain Relief', 'Vitamins', 'Devices', 'Wellness'];
        const testimonialsData = [
            { quote: 'Fast delivery and genuine products!', author: 'John Doe' },
            { quote: 'Excellent service always.', author: 'Jane Smith' }
        ];
        const blogPosts = [
            { title: 'Top Health Tips for Winter', excerpt: 'Stay healthy this season.', date: 'Oct 2025', img: 'https://source.unsplash.com/random/350x200/?health,winter' },
            { title: 'Benefits of Daily Vitamins', excerpt: 'Boost your immunity.', date: 'Sep 2025', img: 'https://source.unsplash.com/random/350x200/?vitamins' }
        ];
        const teamMembers = [
            { name: 'Dr. Alex Green', role: 'Chief Pharmacist', img: 'https://source.unsplash.com/random/150x150/?person,doctor1', bio: 'Expert in pharmaceuticals.' },
            { name: 'Sarah Blue', role: 'Customer Support', img: 'https://source.unsplash.com/random/150x150/?person,support', bio: 'Dedicated to service.' }
        ];
        const faqData = [
            { question: 'How to order prescription medicines?', answer: 'Upload prescription during checkout.' },
            { question: 'Return policy?', answer: 'Within 7 days for unopened items.' }
        ];

        let cart = [];
        let currentPage = 1;
        const productsPerPage = 4;

        function init() {
            renderCategories();
            renderProducts();
            renderTestimonials();
            renderBlogPosts();
            renderTeam();
            renderFaq();
            renderPromotions();
            renderPartners();
            initAnimations();
            initScrollTop();
            document.getElementById('search-input').addEventListener('input', filterProducts);
        }

        function renderCategories() {
            const grid = document.getElementById('categories-grid');
            grid.innerHTML = '';
            categories.forEach(cat => {
                const div = document.createElement('div');
                div.className = 'category-card';
                div.innerHTML = `
                    <div class="category-icon">🩺</div>
                    <h3>${cat}</h3>
                `;
                div.onclick = () => {
                    document.getElementById('category-filter').value = cat;
                    filterProducts();
                };
                grid.appendChild(div);
            });

            const categoryFilter = document.getElementById('category-filter');
            categories.forEach(cat => {
                const option = document.createElement('option');
                option.value = cat;
                option.textContent = cat;
                categoryFilter.appendChild(option);
            });
        }

        function renderProducts() {
            const searchTerm = document.getElementById('search-input').value.toLowerCase();
            const categoryFilter = document.getElementById('category-filter').value;
            const priceFilter = document.getElementById('price-filter').value;
            const filteredProducts = productsData.filter(product =>
                product.title.toLowerCase().includes(searchTerm) &&
                (categoryFilter ? product.category === categoryFilter : true) &&
                (priceFilter ? (priceFilter === 'low' ? product.price < 20 : product.price >= 20) : true)
            );

            const grid = document.getElementById('products-grid');
            grid.innerHTML = '';
            const start = (currentPage - 1) * productsPerPage;
            const end = start + productsPerPage;
            const currentProducts = filteredProducts.slice(start, end);

            currentProducts.forEach(product => {
                const div = document.createElement('div');
                div.className = 'product-card';
                div.innerHTML = `
                    <img src="${product.img}" alt="${product.title}" class="product-img">
                    <div class="product-info">
                        <h3 class="product-title">${product.title}</h3>
                        <p class="product-desc">${product.description}</p>
                        <span class="product-price">$${product.price.toFixed(2)}</span>
                        <p class="product-details">Stock: ${product.stock} | Expiry: ${product.expiry}</p>
                        <p class="product-details">Manufacturer: ${product.manufacturer} | Dosage: ${product.dosage}</p>
                        <button class="add-to-cart" onclick="addToCart(${product.id})">Add to Cart</button>
                    </div>
                `;
                div.onclick = () => openProductModal(product);
                grid.appendChild(div);
            });

            renderPagination(filteredProducts.length);
        }

        function renderPagination(totalProducts) {
            const pages = Math.ceil(totalProducts / productsPerPage);
            const pagination = document.getElementById('pagination');
            pagination.innerHTML = '';
            for (let i = 1; i <= pages; i++) {
                const button = document.createElement('button');
                button.className = 'page-btn' + (i === currentPage ? ' active' : '');
                button.textContent = i;
                button.onclick = () => {
                    currentPage = i;
                    renderProducts();
                };
                pagination.appendChild(button);
            }
        }

        function filterProducts() {
            currentPage = 1;
            renderProducts();
        }

        function addToCart(id) {
            const product = productsData.find(p => p.id === id);
            cart.push(product);
            updateCart();
        }

        function removeFromCart(id) {
            cart = cart.filter(item => item.id !== id);
            updateCart();
        }

        function updateCart() {
            document.getElementById('cart-count').textContent = cart.length;
            const cartItems = document.getElementById('cart-items');
            cartItems.innerHTML = '';
            cart.forEach(item => {
                const div = document.createElement('div');
                div.className = 'cart-item';
                div.innerHTML = `
                    <img src="${item.img}" alt="${item.title}" class="cart-item-img">
                    <div class="cart-item-info">
                        <h3 class="cart-item-title">${item.title}</h3>
                        <span class="cart-item-price">$${item.price.toFixed(2)}</span>
                    </div>
                    <button class="remove-btn" onclick="removeFromCart(${item.id})">Remove</button>
                `;
                cartItems.appendChild(div);
            });
            const total = cart.reduce((sum, item) => sum + item.price, 0);
            document.getElementById('cart-total').textContent = `Total: $${total.toFixed(2)}`;
        }

        function openCartModal() {
            document.getElementById('cart-modal').className = 'modal open';
        }

        function closeCartModal() {
            document.getElementById('cart-modal').className = 'modal';
        }

        function openProductModal(product) {
            const modal = document.getElementById('product-modal');
            const details = document.getElementById('product-details');
            details.innerHTML = `
                <img src="${product.img}" alt="${product.title}" class="product-detail-img">
                <h2 class="product-detail-title">${product.title}</h2>
                <p class="product-detail-desc">${product.description}</p>
                <p class="product-detail-info">Stock: ${product.stock} | Expiry: ${product.expiry}</p>
                <p class="product-detail-info">Manufacturer: ${product.manufacturer} | Dosage: ${product.dosage}</p>
                <p class="product-detail-info">Pack Size: ${product.packSize} | Rating: ${product.rating}</p>
                <span class="product-detail-price">$${product.price.toFixed(2)}</span>
                <button class="add-to-cart" onclick="addToCart(${product.id})">Add to Cart</button>
            `;
            modal.className = 'modal open';
        }

        function closeProductModal() {
            document.getElementById('product-modal').className = 'modal';
        }

        function renderTestimonials() {
            const grid = document.getElementById('testimonials-grid');
            grid.innerHTML = '';
            testimonialsData.forEach(test => {
                const div = document.createElement('div');
                div.className = 'testimonial';
                div.innerHTML = `
                    <p>"${test.quote}"</p>
                    <span class="testimonial-author">- ${test.author}</span>
                `;
                grid.appendChild(div);
            });
        }

        function renderBlogPosts() {
            const posts = document.getElementById('blog-posts');
            posts.innerHTML = '';
            blogPosts.forEach(post => {
                const div = document.createElement('div');
                div.className = 'blog-post';
                div.innerHTML = `
                    <img src="${post.img}" alt="${post.title}" class="blog-img">
                    <div class="blog-info">
                        <h3 class="blog-title">${post.title}</h3>
                        <p class="blog-excerpt">${post.excerpt}</p>
                        <span class="blog-date">${post.date}</span>
                    </div>
                `;
                posts.appendChild(div);
            });
        }

        function renderTeam() {
            const grid = document.getElementById('team-grid');
            grid.innerHTML = '';
            teamMembers.forEach(member => {
                const div = document.createElement('div');
                div.className = 'team-member';
                div.innerHTML = `
                    <img src="${member.img}" alt="${member.name}" class="team-img">
                    <h3 class="team-name">${member.name}</h3>
                    <p class="team-role">${member.role}</p>
                    <span>${member.bio}</span>
                `;
                grid.appendChild(div);
            });
        }

        function renderFaq() {
            const list = document.getElementById('faq-list');
            list.innerHTML = '';
            faqData.forEach((faq, index) => {
                const div = document.createElement('div');
                div.className = 'faq-item';
                div.innerHTML = `
                    <div class="faq-question">${faq.question}</div>
                    <div class="faq-answer">${faq.answer}</div>
                `;
                div.onclick = () => {
                    div.className = div.className.includes('active') ? 'faq-item' : 'faq-item active';
                };
                list.appendChild(div);
            });
        }

        function renderPromotions() {
            const grid = document.getElementById('promotions-grid');
            grid.innerHTML = '';
            for (let i = 1; i <= 6; i++) {
                const div = document.createElement('div');
                div.className = 'promo-card';
                div.innerHTML = `
                    <h3 class="promo-title">Promo ${i}</h3>
                    <p class="promo-desc">Get 20% off on selected items.</p>
                    <button class="promo-btn">Shop Now</button>
                `;
                grid.appendChild(div);
            }
        }

        function renderPartners() {
            const grid = document.getElementById('partners-grid');
            grid.innerHTML = '';
            for (let i = 0; i < 14; i++) {
                const img = document.createElement('img');
                img.src = `https://source.unsplash.com/random/150x80/?partner,${i}`;
                img.alt = `Partner ${i + 1}`;
                img.className = 'partner-logo';
                grid.appendChild(img);
            }
        }

        function initAnimations() {
            gsap.from('.product-card', { duration: 0.8, y: 50, opacity: 0, stagger: 0.1, ease: 'power2.out' });
        }

        function initScrollTop() {
            window.addEventListener('scroll', () => {
                const scrollTopBtn = document.getElementById('scroll-top');
                if (window.scrollY > 500) {
                    scrollTopBtn.className = 'scroll-top visible';
                } else {
                    scrollTopBtn.className = 'scroll-top';
                }
            });
        }

        window.onload = init;
    </script>
</body>
</html>
