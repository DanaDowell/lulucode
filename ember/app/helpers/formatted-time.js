import Ember from 'ember';

import { formatTime } from '../utils/time-helpers';

export default Ember.HTMLBars.makeBoundHelper(function(time, format) {
  return formatTime(time, format);
});
