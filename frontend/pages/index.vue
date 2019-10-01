<template>
  <section class="container">
    <div>
      <logo />
      <h1 class="title">frontend</h1>
      <h2 class="subtitle">{{ message }}</h2>
      <div class="links">
        <label>
          <input v-model="name" type="text">
        </label>
        <a @click="sendHelloRequest">HelloRequest</a>
      </div>
    </div>
  </section>
</template>

<script>
import Logo from '../components/Logo.vue'
import { HelloRequest } from '../grpc/helloworld/helloworld_pb'
import { GreeterClient } from '../grpc/helloworld/HelloworldServiceClientPb'

export default {
  components: {
    Logo
  },
  data() {
    return {
      client: null,
      clientUri: 'http://localhost:8080',
      name: '',
      message: '',
    }
  },
  mounted() {
    this.client = new GreeterClient(this.clientUri, {}, {})
  },
  methods: {
    sendHelloRequest() {
      const request = new HelloRequest()
      request.setName(this.name)
      this.client.sayHello(request, {}, (err, res) => {
        if (err || res === null) {
          throw err
        }
        this.message = res.getMessage()
      })
    }
  }
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
