.class public Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;
.super Ljava/lang/Object;
.source "ServerConnector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerConnector"

.field private static volatile mInstance:Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;


# instance fields
.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;
    .locals 2

    const-string v0, "ServerConnector"

    const-string v1, "ServerConnector - getInstance"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->mInstance:Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    if-nez v0, :cond_1

    const-class v1, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->mInstance:Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->mInstance:Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->mInstance:Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
