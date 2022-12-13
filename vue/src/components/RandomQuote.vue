<template>
  <div>
    <div v-if="quoteOfTheVisit" class="box quote">
      <div class ="place is-italic">"{{ quoteOfTheVisit.text }}"</div>
      <div class ="place">-{{ quoteOfTheVisit.author }}</div>
    </div>
  </div>
</template>

<script>
import quoteService from "../services/QuoteService";

export default {
  data() {
    return {
      allQuotes: [],
    };
  },
  created() {
    this.getQuote();
  },
  computed: {
    quoteOfTheVisit() {
      return this.allQuotes[this.getRandomNumber()];
    },
  },
  methods: {
    //generate the random number and look into the list
    getRandomNumber() {
      const bg = Math.floor(Math.random() * this.allQuotes.length);
      return bg;
    },
    getQuote() {
      quoteService.getRandomQuote().then((response) => {
        this.allQuotes = response.data;
      });
    },
  },
};
</script>

<style scoped>
.quote {
  display: flex !important;
  flex-direction: column !important;
  justify-content: center !important;
  border: solid;
  border-color: rgb(90, 197, 90);
}
.quote1 {
  display: flex !important;
  justify-content: center !important;
}
.place{
    display: flex !important;
    justify-content: center !important;
    align-content: center !important;
}
</style>
