import Cookies from 'js-cookie';

const addListenerToCards = () => {
  const glassCards = document.querySelectorAll(".glass-card");
  glassCards.forEach((card) => {
    card.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle("red");
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
    document.getElementById(element).classList.add("red");
  });
};


export {addListenerToCards};
export {getVisitedIdsFromCookie};
export {setVisitedCards};
