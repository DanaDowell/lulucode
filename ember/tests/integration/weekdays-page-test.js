import Ember from 'ember';
import {module, test } from 'qunit';
import startApp from '../helpers/start-app';

var App;

module('Integration - Days of the Week Page', {
  beforeEach: function() {
    App = startApp();
  },
  afterEach: function() {
    Ember.run(App, 'destroy');
  }
});


test('Should allow navigation to the days of the week page from the landing page', function(assert) {
  visit('/').then(function() {
    click('a:contains("Weekdays")').then(function() {
      assert.equal(find('h3').text(), 'Weekdays');
    });
  });
});

test('should list all weekdays', function(assert) {
  visit('/weekdays').then(function() {
    assert.equal(find('a:contains("Sunday")').length, 1);
    assert.equal(find('a:contains("Thursday")').length, 1);
  });
});

test('should be able to navigate to weekday page', function(assert) {
  visit('/weekdays').then(function() {
    click('a:contains("Sunday")').then(function() {
      assert.equal(find('h4').text(), 'Sunday');
    });
  });
});

test('should be able to go directly to weekday page', function(assert) {
  visit('/weekdays/1').then(function() {
    assert.equal(find('h4').text(), 'Sunday');
  });
});