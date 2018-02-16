// Imports the Google Cloud client library
const Storage = require('@google-cloud/storage');

// Creates a client
const storage = new Storage();

const bucketName = 'team10';
const filename = './test.txt';

// Uploads a local file to the bucket
storage
  .bucket(bucketName)
  .upload(filename)
  .then(() => {
    console.log(`${filename} uploaded to ${bucketName}.`);
  })
  .catch(err => {
    console.error('ERROR:', err);
  });
