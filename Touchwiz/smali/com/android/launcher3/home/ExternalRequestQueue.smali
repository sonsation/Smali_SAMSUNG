.class public final Lcom/android/launcher3/home/ExternalRequestQueue;
.super Ljava/lang/Object;
.source "ExternalRequestQueue.java"


# static fields
.field private static final EXTERNAL_REQUEST_LIST_HOME_APPS:Ljava/lang/String; = "external_request_list_home_apps"

.field private static final EXTERNAL_REQUEST_LIST_HOME_ONLY:Ljava/lang/String; = "external_request_list_home_only"

.field private static final INSTALL_SHORTCUT_FLUSHED:Ljava/lang/String; = "com.samsung.android.launcher.action.INSTALL_SHORTCUT_FLUSHED"

.field private static final TAG:Ljava/lang/String; = "ExternalRequestQueue"

.field private static final TASK_EDGE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.taskedge"

.field private static final sLock:Ljava/lang/Object;

.field private static sSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToExternalRequestQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/home/ExternalRequestInfo;)V
    .locals 5
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "info"    # Lcom/android/launcher3/home/ExternalRequestInfo;

    .prologue
    .line 232
    sget-object v4, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 233
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->encodeToString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v1

    .line 236
    .local v1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 237
    new-instance v1, Ljava/util/LinkedHashSet;

    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 241
    .restart local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {p0, v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 244
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v4

    .line 245
    return-void

    .line 239
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

    .line 244
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;
    .locals 6
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 211
    .local v1, "object":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 227
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "type":I
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 215
    .restart local v1    # "object":Lorg/json/JSONObject;
    .restart local v2    # "type":I
    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/launcher3/home/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v3

    goto :goto_1

    .line 217
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/launcher3/home/UninstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    move-result-object v3

    goto :goto_1

    .line 219
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/launcher3/home/InstallWidgetReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    move-result-object v3

    goto :goto_1

    .line 221
    :pswitch_3
    invoke-static {p0, p1}, Lcom/android/launcher3/home/UninstallWidgetReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 224
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ExternalRequestQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading shortcut to add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static disableAndFlushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    .line 52
    invoke-static {p0, p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->flushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    .line 53
    return-void
.end method

.method private static flushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->isHomeNormal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 68
    invoke-static {v3, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getAndClearExternalRequestQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "installQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    new-instance v3, Lcom/android/launcher3/home/ExternalRequestQueue$1;

    invoke-direct {v3}, Lcom/android/launcher3/home/ExternalRequestQueue$1;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/ExternalRequestInfo;

    .line 82
    .local v2, "pendingInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/home/ExternalRequestInfo;->runRequestInfo(Landroid/content/Context;)V

    goto :goto_1

    .line 84
    .end local v2    # "pendingInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    :cond_2
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->sendBroadCaseToTaskEdge(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static getAndClearExternalRequestQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/ExternalRequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v5, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    .line 116
    .local v3, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "ExternalRequestQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting and clearing EXTERNAL_REQUEST_LIST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v3, :cond_0

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v5

    .line 128
    :goto_0
    return-object v2

    .line 120
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "requestInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
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

    .line 122
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    .line 123
    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v2    # "requestInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    .end local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 127
    .restart local v2    # "requestInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    .restart local v3    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 128
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;
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
    .line 89
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_request_list_home_only"

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "external_request_list_home_apps"

    goto :goto_0
.end method

.method static getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/ExternalRequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    .line 95
    .local v3, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/ExternalRequestInfo;>;"
    if-eqz v3, :cond_1

    .line 97
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v2

    .line 99
    .local v2, "savedInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/ExternalRequestInfo;->getRequestType()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v2    # "savedInfo":Lcom/android/launcher3/home/ExternalRequestInfo;
    :cond_1
    return-object v1
.end method

.method private static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "spKey":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    .line 60
    .end local v0    # "spKey":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-object v1
.end method

.method static queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/home/ExternalRequestInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 250
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 251
    .local v0, "launcherNotLoaded":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->isExternalQueueEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->isHomeNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->runRequestInfo(Landroid/content/Context;)V

    .line 254
    invoke-static {p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->sendBroadCaseToTaskEdge(Landroid/content/Context;)V

    .line 258
    :goto_1
    return-void

    .line 250
    .end local v0    # "launcherNotLoaded":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    .restart local v0    # "launcherNotLoaded":Z
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->addToExternalRequestQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/home/ExternalRequestInfo;)V

    goto :goto_1
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/home/ExternalRequestInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputInfo"    # Lcom/android/launcher3/home/ExternalRequestInfo;

    .prologue
    .line 167
    sget-object v6, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 168
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    .line 169
    .local v4, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 170
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v2, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    .local v3, "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    .line 175
    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->equals(Lcom/android/launcher3/home/ExternalRequestInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 180
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 182
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v6

    .line 183
    return-void

    .line 182
    .end local v4    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-object v6, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 191
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    .line 192
    .local v4, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 193
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v2, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 195
    .local v3, "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    .line 198
    .local v1, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/home/ExternalRequestInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    invoke-virtual {v1}, Lcom/android/launcher3/home/ExternalRequestInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 205
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 203
    .restart local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 205
    .end local v2    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;ILandroid/content/Intent;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "isRemove":Z
    sget-object v10, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v8

    .line 136
    .local v8, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 137
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v4, "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 139
    .local v5, "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v1, "encoded":Ljava/lang/String;
    :try_start_1
    new-instance v9, Lorg/json/JSONTokener;

    invoke-direct {v9, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 143
    .local v6, "object":Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 144
    .local v7, "requestType":I
    const-string v9, "intent.launch"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    invoke-static {v9, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 146
    .local v3, "launcherIntent":Landroid/content/Intent;
    if-ne v7, p1, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {p2, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/4 v2, 0x1

    .line 157
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v3    # "launcherIntent":Landroid/content/Intent;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "requestType":I
    :cond_1
    if-eqz v2, :cond_2

    .line 158
    :try_start_2
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    .line 159
    const-string v9, "ExternalRequestQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeFromExternalRequestQueue, type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v4    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v10

    .line 163
    return v2

    .line 151
    .restart local v1    # "encoded":Ljava/lang/String;
    .restart local v4    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "ExternalRequestQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSONException occured"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v4    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 153
    .restart local v1    # "encoded":Ljava/lang/String;
    .restart local v4    # "newStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "newStringsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v9, "ExternalRequestQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URISyntaxException occured"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private static sendBroadCaseToTaskEdge(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lcom/android/launcher3/home/ExternalRequestQueue$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    return-void
.end method

.method private static setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V
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
    .line 108
    .local p1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_request_list_home_only"

    :goto_0
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void

    .line 108
    :cond_0
    const-string v0, "external_request_list_home_apps"

    goto :goto_0
.end method
