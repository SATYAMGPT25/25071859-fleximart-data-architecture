// =====================================================
// FlexiMart MongoDB Operations
// =====================================================

// Connect to MongoDB (assumes default localhost:27017)
const { MongoClient, ObjectId } = require('mongodb');
const fs = require('fs');

const uri = "mongodb://localhost:27017";
const client = new MongoClient(uri);

async function run() {
    try {
        await client.connect();
        const db = client.db("fleximart");
        const products = db.collection("products");

        // -------------------- Operation 1: Load Data --------------------
        // Load products_catalog.json into 'products' collection
        const data = JSON.parse(fs.readFileSync('products_catalog.json', 'utf-8'));
        await products.insertMany(data);
        console.log("Data loaded successfully into 'products' collection.");

        // -------------------- Operation 2: Basic Query --------------------
        // Find all products in "Electronics" category with price < 50000
        // Return only: name, price, stock
        const electronicsUnder50k = await products.find(
            { category: "Electronics", price: { $lt: 50000 } },
            { projection: { _id: 0, name: 1, price: 1, stock: 1 } }
        ).toArray();
        console.log("Electronics under 50k:", electronicsUnder50k);

        // -------------------- Operation 3: Review Analysis --------------------
        // Find all products with average rating >= 4.0
        const highRatedProducts = await products.aggregate([
            { $unwind: "$reviews" },
            { $group: {
                _id: "$_id",
                name: { $first: "$name" },
                category: { $first: "$category" },
                avg_rating: { $avg: "$reviews.rating" }
            }},
            { $match: { avg_rating: { $gte: 4.0 } } },
            { $project: { _id: 0, name: 1, category: 1, avg_rating: 1 } }
        ]).toArray();
        console.log("Products with avg rating >= 4.0:", highRatedProducts);

        // -------------------- Operation 4: Update Operation --------------------
        // Add a new review to product "ELEC001"
        const newReview = {
            user: "U999",
            rating: 4,
            comment: "Good value",
            date: new Date()
        };
        await products.updateOne(
            { product_id: "ELEC001" },
            { $push: { reviews: newReview } }
        );
        console.log("Added new review to product ELEC001.");

        // -------------------- Operation 5: Complex Aggregation --------------------
        // Calculate average price by category, return category, avg_price, product_count
        const categoryStats = await products.aggregate([
            { $group: {
                _id: "$category",
                avg_price: { $avg: "$price" },
                product_count: { $sum: 1 }
            }},
            { $project: { _id: 0, category: "$_id", avg_price: 1, product_count: 1 } },
            { $sort: { avg_price: -1 } }
        ]).toArray();
        console.log("Average price by category:", categoryStats);

    } catch (err) {
        console.error("Error:", err);
    } finally {
        await client.close();
    }
}

run();