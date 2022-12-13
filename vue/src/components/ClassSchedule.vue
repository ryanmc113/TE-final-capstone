<template>
  <div class="field">
    <div class="tile">
      <div class="input int2">Day</div>
      &nbsp;&nbsp;
      <div class="input int2">Instructor</div>
      &nbsp;&nbsp;
      <div class="input int2">Time</div>
      &nbsp;&nbsp;
      <div class="input int2">Name</div>
      &nbsp;&nbsp;
    </div>
    &nbsp;&nbsp;
    <div class="tile" v-for="classes in allClasses" v-bind:key="classes.id">
      <div class="input int2 classSch">{{ classes.classDay }}</div>
      &nbsp;&nbsp;
      <div class="input int2 classSch">{{ classes.classInstructor }}</div>
      &nbsp;&nbsp;
      <div class="input int2 classSch">{{ classes.classTime }}</div>
      &nbsp;&nbsp;
      
      <div class="input int2 classSch popup" @click="myFunction">{{ classes.className }}
      <span class="popuptext"> {{ classes.classDescription }} </span>
      </div>
      
    </div>
    <div class="tile"></div>
  </div>
</template>

<script>
import workoutService from "../services/WorkoutService";


export default {
  data() {
    return {
      allClasses: [],
    };
  },
  created() {
    this.getClassSch();
  },
  methods: {
     myFunction(e) {
    const popup = e.currentTarget.querySelector('.popuptext');
    popup.classList.toggle("show");
    },
    getClassSch() {
      workoutService.getClassSch().then((response) => {
        this.allClasses = response.data;
      });
    },
  },
  
};
</script>

<style>
.classSch {
  background-color: rgb(177, 231, 231) !important;
}

.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class when clicking on the popup container (hide and show the popup) */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}


</style>
