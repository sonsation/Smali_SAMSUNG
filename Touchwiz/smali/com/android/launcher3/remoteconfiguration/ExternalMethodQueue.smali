.class public final Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;
.super Ljava/lang/Object;
.source "ExternalMethodQueue.java"


# static fields
.field private static final EXTERNAL_METHOD_LIST_HOME_APPS:Ljava/lang/String; = "external_method_list_home_apps"

.field private static final EXTERNAL_METHOD_LIST_HOME_ONLY:Ljava/lang/String; = "external_method_list_home_only"

.field private static final TAG:Ljava/lang/String; = "ExternalMethodQueue"

.field private static final sLock:Ljava/lang/Object;

.field private static sSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sSharedPref:Landroid/content/SharedPreferences;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToExternalMethodQueue(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)V
    .locals 7
    .param p0, "info"    # Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->encodeToString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->getExternalMethodList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v1

    .line 104
    .local v1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 105
    new-instance v1, Ljava/util/LinkedHashSet;

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 109
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const-string v3, "ExternalMethodQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding encoded sting EXTERNAL_METHOD_LIST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {p1}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->setExternalMethodList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 113
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v4

    .line 114
    return-void

    .line 107
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, v2

    .end local v2    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 113
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static decode(Ljava/lang/String;)Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .locals 13
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v10, Lcom/google/gson/GsonBuilder;

    invoke-direct {v10}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 161
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v10, Lorg/json/JSONTokener;

    invoke-direct {v10, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 162
    .local v7, "object":Lorg/json/JSONObject;
    const-string v10, "method"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "gsonMethod":Ljava/lang/String;
    const-string v10, "time"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "gsonTime":Ljava/lang/String;
    const-string v10, "bundle"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 166
    .local v0, "array":Lorg/json/JSONArray;
    const-class v10, Ljava/lang/String;

    invoke-virtual {v3, v4, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 167
    .local v6, "method":Ljava/lang/String;
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v5, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 168
    .local v8, "time":J
    invoke-static {v0, v3}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->toBundle(Lorg/json/JSONArray;Lcom/google/gson/Gson;)Landroid/os/Bundle;

    move-result-object v1

    .line 169
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v10, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    invoke-direct {v10, v6, v1, v8, v9}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "gsonMethod":Ljava/lang/String;
    .end local v5    # "gsonTime":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "time":J
    :goto_0
    return-object v10

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string v10, "ExternalMethodQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception decode externalMethodInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v10, 0x0

    goto :goto_0

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static disableAndFlushExternalMethodQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    .line 56
    invoke-static {p0, p1}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->flushExternalMethodQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    .line 57
    return-void
.end method

.method private static flushExternalMethodQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher3/LauncherModel$Callbacks;->isHomeNormal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->getAndClearExternalMethodQueue(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "installQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;>;"
    new-instance v4, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue$1;

    invoke-direct {v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue$1;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider;->getRemoteConfigurationManager()Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v3

    .line 78
    .local v3, "rcm":Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    .line 80
    .local v2, "pendingInfo":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->runMethodInfo(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)V

    goto :goto_0
.end method

.method private static getAndClearExternalMethodQueue(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->getExternalMethodList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    .line 120
    .local v3, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "ExternalMethodQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting and clearing EXTERNAL_METHOD_LIST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez v3, :cond_0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v5

    .line 132
    :goto_0
    return-object v2

    .line 124
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "methodInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->decode(Ljava/lang/String;)Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    move-result-object v1

    .line 127
    .local v1, "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .end local v2    # "methodInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;>;"
    .end local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 131
    .restart local v2    # "methodInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;>;"
    .restart local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->setExternalMethodList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 132
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getExternalMethodList(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 2
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_method_list_home_only"

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "external_method_list_home_apps"

    goto :goto_0
.end method

.method private static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    sget-object v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 138
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "spKey":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sSharedPref:Landroid/content/SharedPreferences;

    .line 141
    .end local v0    # "spKey":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-object v1
.end method

.method static queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z
    .locals 6
    .param p0, "info"    # Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 87
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 88
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    if-eqz v1, :cond_0

    move v2, v3

    .line 90
    .local v2, "launcherLoaded":Z
    :goto_0
    if-nez v2, :cond_1

    .line 91
    invoke-static {p0, p1}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->addToExternalMethodQueue(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)V

    .line 95
    :goto_1
    return v3

    .end local v2    # "launcherLoaded":Z
    :cond_0
    move v2, v4

    .line 88
    goto :goto_0

    .restart local v2    # "launcherLoaded":Z
    :cond_1
    move v3, v4

    .line 95
    goto :goto_1
.end method

.method private static setExternalMethodList(Landroid/content/SharedPreferences;Ljava/util/Set;)V
    .locals 2
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_method_list_home_only"

    .line 146
    :goto_0
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void

    .line 147
    :cond_0
    const-string v0, "external_method_list_home_apps"

    goto :goto_0
.end method

.method private static toBundle(Lorg/json/JSONArray;Lcom/google/gson/Gson;)Landroid/os/Bundle;
    .locals 13
    .param p0, "bundleArray"    # Lorg/json/JSONArray;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 180
    .local v2, "bundleCount":I
    const/4 v9, 0x0

    .line 181
    .local v9, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 182
    .local v8, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 184
    .local v4, "classPath":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 185
    :try_start_0
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    .local v0, "arrayObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 187
    .local v7, "iterator":Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 188
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 193
    :cond_0
    if-eqz v9, :cond_3

    .line 194
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    if-nez v4, :cond_2

    .line 196
    const-string v10, "ExternalMethodQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "classPath of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    .line 218
    .end local v0    # "arrayObject":Lorg/json/JSONObject;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-object v1

    .line 200
    .restart local v0    # "arrayObject":Lorg/json/JSONObject;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    .local v3, "bundleObject":Ljava/lang/Object;
    instance-of v10, v3, Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 202
    check-cast v3, Ljava/lang/String;

    .end local v3    # "bundleObject":Ljava/lang/Object;
    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 203
    .restart local v3    # "bundleObject":Ljava/lang/Object;
    :cond_4
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_5

    .line 204
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "bundleObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 215
    .end local v0    # "arrayObject":Lorg/json/JSONObject;
    .end local v7    # "iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 216
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "ExternalMethodQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception toBundle: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " classPath : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 205
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "arrayObject":Lorg/json/JSONObject;
    .restart local v3    # "bundleObject":Ljava/lang/Object;
    .restart local v7    # "iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    .line 206
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "bundleObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 215
    .end local v0    # "arrayObject":Lorg/json/JSONObject;
    .end local v7    # "iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    goto :goto_3

    .line 207
    .restart local v0    # "arrayObject":Lorg/json/JSONObject;
    .restart local v3    # "bundleObject":Ljava/lang/Object;
    .restart local v7    # "iterator":Ljava/util/Iterator;
    :cond_6
    instance-of v10, v3, Landroid/os/Parcelable;

    if-eqz v10, :cond_7

    .line 208
    check-cast v3, Landroid/os/Parcelable;

    .end local v3    # "bundleObject":Ljava/lang/Object;
    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 210
    .restart local v3    # "bundleObject":Ljava/lang/Object;
    :cond_7
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported key, value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
.end method
