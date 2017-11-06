.class Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;
.super Ljava/lang/Thread;
.source "ConnectivityObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->checkConnection()Lrx/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "reachable":Z
    :try_start_0
    const-string/jumbo v2, "www.samsungapps.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->CONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    :goto_1
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->access$002(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;)Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->access$102(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;J)J

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->access$200(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)Lrx/subjects/PublishSubject;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->access$000(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->access$200(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)Lrx/subjects/PublishSubject;

    move-result-object v2

    invoke-virtual {v2}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 49
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->DISCONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    goto :goto_1
.end method
