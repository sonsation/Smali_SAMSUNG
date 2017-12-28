.class final Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
.super Ljava/lang/Object;
.source "ExternalMethodInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalMethodInfo"

.field static final TYPE_BUNDLE:Ljava/lang/String; = "bundle"

.field static final TYPE_METHOD:Ljava/lang/String; = "method"

.field static final TYPE_TIME:Ljava/lang/String; = "time"


# instance fields
.field private final mRequestBundle:Landroid/os/Bundle;

.field private final mRequestMethod:Ljava/lang/String;

.field private final mRequestTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "time"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestMethod:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestBundle:Landroid/os/Bundle;

    .line 49
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .end local p3    # "time":J
    :cond_0
    iput-wide p3, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestTime:J

    .line 50
    return-void
.end method


# virtual methods
.method encodeToString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 57
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 59
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 60
    .local v0, "bundle":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 61
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v5, "object":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestBundle:Landroid/os/Bundle;

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestBundle:Landroid/os/Bundle;

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "classPath":Ljava/lang/String;
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "bundle":Lorg/json/JSONArray;
    .end local v1    # "classPath":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "ExternalMethodInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when encodeToString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v7, 0x0

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v7

    .line 71
    .restart local v0    # "bundle":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .restart local v5    # "object":Lorg/json/JSONObject;
    const-string v7, "method"

    iget-object v8, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v7, "time"

    iget-wide v8, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v7, "bundle"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1
.end method

.method getRequestTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestTime:J

    return-wide v0
.end method

.method runMethodInfo(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)V
    .locals 3
    .param p1, "remoteConfigurationManager"    # Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestMethod:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->mRequestBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleRemoteConfigurationCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 87
    :cond_0
    return-void
.end method
