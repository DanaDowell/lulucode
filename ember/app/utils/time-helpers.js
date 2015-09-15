/*export default function timeHelpers() {
  return true;
}*/

export default function formatTime(time, format) {
  return window.moment(time).format(format);
}

