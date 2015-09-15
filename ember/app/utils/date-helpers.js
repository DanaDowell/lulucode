/*export default function dateHelpers() {
  return true;
}*/
function formatDate(date, format) {
  return window.moment(date).format(format);
}
export { 
  formatDate
};
