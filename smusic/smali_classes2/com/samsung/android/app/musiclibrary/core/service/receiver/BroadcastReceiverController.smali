.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;
.super Ljava/lang/Object;
.source "BroadcastReceiverController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Receiver"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "o"    # [Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mMap:Ljava/util/Map;

    .line 59
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mContext:Landroid/content/Context;

    .line 25
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 26
    .local v0, "io":Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->setupIntentReceivers(Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "io":Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;->onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    :cond_0
    return-void
.end method

.method private setupIntentReceivers(Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V
    .locals 5
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;->getSupportedActions()[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "actions":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 33
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mMap:Ljava/util/Map;

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public register()V
    .locals 5

    .prologue
    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 48
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v1, "f":Landroid/content/IntentFilter;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
