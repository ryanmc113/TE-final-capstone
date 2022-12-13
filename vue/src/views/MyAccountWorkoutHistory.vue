<template>
    <div>
        My History
        <workout-history :visitId="parseInt($route.params.id)"/>
    </div>
</template>

<script>
import WorkoutHistory from '../components/WorkoutHistory.vue';
export default {
components:{
    WorkoutHistory,
    
}
        
    
}
</script>
