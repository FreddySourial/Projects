
//List Section
let input = document.getElementById("input");
input.addEventListener("keyup", function () {
  var search = this.value.toLowerCase();
  var items = document.querySelectorAll("#search_list li");
  if (items.length > 0) {
    for (let i of items) {
      let item = i.innerHTML.toLowerCase();
      if (item.indexOf(search) > -1) {
        i.style.display = "block";
      } else {
        i.style.display = "none";
      }

      if (search == "") {
        i.style.display = "none";
      }
    }
  }
});
// message section
var txtValue = document.getElementById("msg");
let currentDay = new Date();
let dateNow = currentDay.getHours();
console.log(dateNow);
if (dateNow >= 0 && dateNow < 6) {
  txtValue.innerHTML = "Good morning, you must be an early bird!";
} else if (dateNow >= 6 && dateNow < 12) {
  txtValue.innerHTML = "Good morning";
} else if (dateNow >= 12 && dateNow < 18) {
  txtValue.innerHTML = "Good afternoon";
} else {
  txtValue.innerHTML = "Good evening";
}
