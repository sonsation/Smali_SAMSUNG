.class public Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;
.super Ljava/lang/Object;
.source "RetrofitGenerator.java"


# static fields
.field private static final CACHE_SIZE:I = 0xa00000

.field private static final DOWNLOAD_SOCKET_TIME_OUT:I = 0x61a8

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SOCKET_TIME_OUT:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->getLoggingInterceptorLevel(Landroid/content/Context;)Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->create(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lokhttp3/logging/HttpLoggingInterceptor$Level;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lokhttp3/logging/HttpLoggingInterceptor$Level;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create url - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p3}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->getHttpLoggingInterceptor(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 55
    .local v1, "interceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v4, 0x61a8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 68
    .local v0, "client":Lokhttp3/OkHttpClient;
    :goto_0
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 69
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;

    invoke-direct {v4}, Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;-><init>()V

    .line 70
    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v2

    .line 71
    .local v2, "retrofit":Lretrofit2/Retrofit;
    invoke-virtual {v2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 61
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v2    # "retrofit":Lretrofit2/Retrofit;
    :cond_0
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v4, 0x7530

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;

    invoke-direct {v4}, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;-><init>()V

    .line 64
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0
.end method

.method private static createSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 13

    .prologue
    .line 115
    const/4 v7, 0x0

    .line 117
    .local v7, "sc":Ljavax/net/ssl/SSLContext;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "keyStoreType":Ljava/lang/String;
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 119
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 120
    const-string v10, "AndroidCAStore"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 121
    .local v6, "ks":Ljava/security/KeyStore;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 122
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 123
    .local v1, "aliases":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 126
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    const-string/jumbo v10, "system:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    invoke-virtual {v4, v0, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 135
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "keyStoreType":Ljava/lang/String;
    .end local v6    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 146
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :goto_1
    return-object v7

    .line 130
    .restart local v1    # "aliases":Ljava/util/Enumeration;
    .restart local v4    # "keyStore":Ljava/security/KeyStore;
    .restart local v5    # "keyStoreType":Ljava/lang/String;
    .restart local v6    # "ks":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "tmfAlgorithm":Ljava/lang/String;
    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v8

    .line 132
    .local v8, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v8, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 133
    const-string v10, "TLS"

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 134
    const/4 v10, 0x0

    invoke-virtual {v8}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 137
    .end local v1    # "aliases":Ljava/util/Enumeration;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "keyStoreType":Ljava/lang/String;
    .end local v6    # "ks":Ljava/security/KeyStore;
    .end local v8    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v9    # "tmfAlgorithm":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 138
    .local v3, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v3

    .line 140
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v3

    .line 142
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 144
    .local v3, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v3}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createSecure(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-wide/16 v10, 0x7530

    .line 79
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v4

    .line 80
    .local v4, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    const-string v8, "httpsTrustAllCertsEnabled"

    const/4 v9, 0x0

    .line 81
    invoke-virtual {v4, v8, v9}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_0
    const/4 v7, 0x0

    .line 85
    .local v7, "trustAllCertEnabled":Z
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 86
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v1

    .line 88
    .local v1, "callAdapter":Lretrofit2/CallAdapter$Factory;
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;->createGson()Lcom/google/gson/Gson;

    move-result-object v8

    invoke-static {v8}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    .line 89
    .local v3, "converter":Lretrofit2/Converter$Factory;
    if-nez v7, :cond_3

    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 91
    .local v6, "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v8}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    invoke-virtual {v8, v10, v11, v9}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;

    invoke-direct {v9}, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;-><init>()V

    .line 94
    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    .line 95
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->getLoggingInterceptorLevel(Landroid/content/Context;)Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->getHttpLoggingInterceptor(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 96
    if-eqz v6, :cond_1

    .line 97
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-virtual {v0, v8}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 99
    :cond_1
    if-eqz v7, :cond_2

    .line 100
    new-instance v8, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator$1;

    invoke-direct {v8}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator$1;-><init>()V

    invoke-virtual {v0, v8}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 108
    :cond_2
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 109
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v8, Lretrofit2/Retrofit$Builder;

    invoke-direct {v8}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v8, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v8

    .line 110
    invoke-virtual {v8, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v5

    .line 111
    .local v5, "retrofit":Lretrofit2/Retrofit;
    invoke-virtual {v5, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 89
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v5    # "retrofit":Lretrofit2/Retrofit;
    .end local v6    # "sc":Ljavax/net/ssl/SSLContext;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->createTrustAllSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    goto :goto_0
.end method

.method private static createTrustAllSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 6

    .prologue
    .line 153
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator$2;

    invoke-direct {v4}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator$2;-><init>()V

    aput-object v4, v2, v3

    .line 165
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    .line 167
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 168
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSecureApi SSL not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/security/KeyManagementException;
    sget-object v3, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSecureApi Unable to initialize SSL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getHttpLoggingInterceptor(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2
    .param p0, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .prologue
    .line 179
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator$3;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator$3;-><init>()V

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 186
    .local v0, "interceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    invoke-virtual {v0, p0}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 187
    return-object v0
.end method

.method private static getLoggingInterceptorLevel(Landroid/content/Context;)Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v1

    .line 193
    .local v1, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    const-string v2, "loglevel"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    .local v0, "logLevel":I
    packed-switch v0, :pswitch_data_0

    .line 201
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_0
    return-object v2

    .line 199
    :pswitch_0
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
