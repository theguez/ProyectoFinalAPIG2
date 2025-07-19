function fn() {
    // get system property 'karate.env'
    let env = karate.env;
    // settings to wait a response from servers 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    karate.log('karate.env property was:', env);

    if (!env) {
        env = 'dev';
    }

    var config = {
       env: env,
       baseUrl: 'https://6878380431d28a460e1d8084.mockapi.io/api/v1/',
       user: 'juanito'
    }

    return config;
}