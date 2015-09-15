import Ember from 'ember';

//export function formattedDate(params/*, hash*/) {
//  return params;
//}
//export default Ember.HTMLBars.makeBoundHelper(formattedDate);
import { formatDate } from '../utils/date-helpers';

export default Ember.HTMLBars.makeBoundHelper(function(date, format) {
  return formatDate(date, format);
});
