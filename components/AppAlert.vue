<script setup>
const props = defineProps({
    message: {
        type: String,
        required: true
    }
})
</script>

<template>
        <p class="text-red-500 bg-red-100 p-4 rounded-md">{{ message }}</p>
</template>

