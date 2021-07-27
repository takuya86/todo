<template>
  <div class="container">
    <div>
      <logo />
      <h1 class="title">
        career-finder
      </h1>
      <h2 class="subtitle">
        {{ subTitle }}
      </h2>
      <button @click="getCompanies">
        企業名取得
      </button>
            <ul v-for=" company in companies" :key="company.id">
        <li style="text-align: left;">{{ company.name }}</li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      subTitle: 'CareerFinder is good service!!',
      companies: []
    }
  },
  methods: {
    async getCompanies() {
      const response = await this.$axios.$get('http://localhost:5000/api/v1/companies')
      this.companies = JSON.parse(response.companies)
    }
  },
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
