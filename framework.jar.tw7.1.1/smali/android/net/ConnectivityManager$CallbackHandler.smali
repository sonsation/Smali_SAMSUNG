.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/net/ConnectivityManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    iput-object p4, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 4

    iget-object v2, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-nez v0, :cond_0

    const-string v1, "ConnectivityManager.CallbackHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-class v5, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    const-class v5, Landroid/net/Network;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v5, "PRECHECK"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    goto :goto_0

    :pswitch_1
    const-string v5, "AVAILABLE"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    goto :goto_0

    :pswitch_2
    const-string v5, "LOSING"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v5}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    goto :goto_0

    :pswitch_3
    const-string v5, "LOST"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    goto :goto_0

    :pswitch_4
    const-string v5, "UNAVAIL"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    goto :goto_0

    :pswitch_5
    const-string v5, "CAP_CHANGED"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v5, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :pswitch_6
    const-string v5, "IP_CHANGED"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v5, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_0

    :pswitch_7
    const-string v5, "SUSPENDED"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    goto :goto_0

    :pswitch_8
    const-string v5, "RESUMED"

    invoke-direct {p0, v4, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    goto/16 :goto_0

    :pswitch_9
    const/4 v0, 0x0

    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    if-eqz v0, :cond_2

    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    const-string v5, "ConnectivityManager.CallbackHandler"

    const-string v6, "callback not found for RELEASED message"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_a
    const-string v5, "ConnectivityManager.CallbackHandler"

    const-string v6, "Listener quitting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkCapabilities;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Landroid/net/ConnectivityManager;->-wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
