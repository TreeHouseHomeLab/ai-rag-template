print("Starting Init Script")
db = db.getSiblingDB('admin');

if (!db.getCollectionNames().includes('admin')) {
  db.createCollection('admin');

  db.admin.insertMany([
    { name: 'Alice', age: 28, city: 'London' },
    { name: 'Bob', age: 34, city: 'Paris' }
  ]);

  print('Collection created and data inserted.');
} else {
  print('Collection already exists. Skipping creation.');
}
