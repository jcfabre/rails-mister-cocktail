import Cookies from 'js-cookie';


const getVisitedIdsFromCookie = () => {
  const visitedIds = [];
  const cookiesJson = Cookies.getJSON();
  Object.entries(cookiesJson).forEach((value, key) => {
    if (value[1] === "visited") {
      visitedIds.push(value[0]);
    }
  });
  return visitedIds;
  console.log(visitedIds);
};

const addListenerToCards = () => {
  const glassCards = document.querySelectorAll(".glass-card");
  glassCards.forEach((card) => {
    card.addEventListener("click", (event) => {
      if (event.target.tagName !== "A") {
        event.currentTarget.classList.toggle("background-hidden");
        event.currentTarget.querySelector("svg").classList.toggle("hidden");
        event.currentTarget.querySelector(".glass-card-title").classList.toggle("hidden");
        if (getVisitedIdsFromCookie().includes(event.currentTarget.id)) {
          Cookies.remove(`${event.currentTarget.id}`);
        } else {Cookies.set(`${event.currentTarget.id}`, 'visited')};
        console.log(Cookies.getJSON());
      }
    });
  });
};

const setVisitedCards = (array) => {
  array.forEach((element) => {
    document.getElementById(element).classList.toggle("background-hidden");
    document.getElementById(element).querySelector("svg").classList.toggle("hidden");
    document.getElementById(element).querySelector(".glass-card-title").classList.toggle("hidden");
  });
};

export {addListenerToCards};
export {getVisitedIdsFromCookie};
export {setVisitedCards};
