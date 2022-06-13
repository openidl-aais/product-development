const fs = require("fs");
const Validator = require("jsonschema").Validator;

let v = new Validator();

let contents = fs.readFileSync("./productSpecifications/result1.json");
let json = JSON.parse(contents);

let schema = JSON.parse(
  fs.readFileSync("./schemas/product-specification-schema.json")
);

v.addSchema(schema);

console.log(v.validate(json, schema));
