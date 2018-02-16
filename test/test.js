var expect = require('chai').expect;
var test = require('../index.js');  // import Test Cases

describe('Port Check:', function () {
  it('valid port is 8080', function () {

    // 1. ARRANGE
    var p = 8080;

    // 2. ACT
    var curPORT = test.checkPort();

    // 3. ASSERT
    expect(curPORT).to.be.equal(p);

  });
});

describe('Text Check:', function () {
  it("valid text 'Hello World!'", function () {

      var t = 'Hello World!'

      var curTEXT = test.checkText();

      expect(curTEXT).to.be.equal(t);

    });
  });



/*
var expect = require('chai').expect;
var addTwoNumbers = require('../addTwoNumbers');

describe('addTwoNumbers()', function () {
  it('should add two numbers', function () {

    // 1. ARRANGE
    var x = 5;
    var y = 1;
    var sum1 = x + y;

    // 2. ACT
    var sum2 = addTwoNumbers(x, y);

    // 3. ASSERT
    expect(sum2).to.be.equal(sum1);

  });
});


*/
