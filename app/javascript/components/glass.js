import Cookies from 'js-cookie';

const addListenerToCards = () => {
  const glassCards = document.querySelectorAll(".glass-card");
  glassCards.forEach((card) => {
    card.addEventListener("click", (event) => {
      console.log(event.currentTarget.querySelector("svg"));
      event.currentTarget.classList.toggle("cocktail-image");
      event.currentTarget.querySelector("svg").classList.toggle("hidden");


      Cookies.set(`${event.currentTarget.id}`, 'visited');
    });
  });
};

const getVisitedIdsFromCookie = () => {
  const visitedIds = [];
  const cookiesJson = Cookies.getJSON();
  Object.entries(cookiesJson).forEach((value, key) => {
    if (value[1] === "visited") {
      visitedIds.push(value[0]);
    }
  });
  return visitedIds;
};

const setVisitedCards = (array) => {
  array.forEach((element) => {
    console.log(document.getElementById(element));
    document.getElementById(element).classList.toggle("cocktail-image");
    document.getElementById(element).querySelector("svg").classList.toggle("hidden");
  });
};

export {addListenerToCards};
export {getVisitedIdsFromCookie};
export {setVisitedCards};
