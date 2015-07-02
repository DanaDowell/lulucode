import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  street_address: DS.attr('string'),
  city: DS.attr('string'),
  time_opens: DS.attr('string'),
  time_closes: DS.attr('string'),
  food_stamps: DS.attr('string')
});
