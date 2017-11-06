.class Lcom/mapps/android/share/Track$8;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$media_no:Ljava/lang/String;

.field private final synthetic val$pub_no:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$8;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$8;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/share/Track$8;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/mapps/android/share/Track$8;->val$pub_no:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/Track$8;->val$media_no:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/Track$8;)Lcom/mapps/android/share/Track;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mapps/android/share/Track$8;->this$0:Lcom/mapps/android/share/Track;

    return-object v0
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 324
    sget-object v0, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v0, :cond_0

    .line 325
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mezzo/common/network/data/DataNTPkgAgList;

    .line 326
    .local v3, "data":Lcom/mezzo/common/network/data/DataNTPkgAgList;
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/share/Track$8$1;

    iget-object v2, p0, Lcom/mapps/android/share/Track$8;->val$ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/mapps/android/share/Track$8;->val$pub_no:Ljava/lang/String;

    iget-object v6, p0, Lcom/mapps/android/share/Track$8;->val$media_no:Ljava/lang/String;

    iget-object v7, p0, Lcom/mapps/android/share/Track$8;->val$handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/mapps/android/share/Track$8$1;-><init>(Lcom/mapps/android/share/Track$8;Landroid/content/Context;Lcom/mezzo/common/network/data/DataNTPkgAgList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 372
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 376
    .end local v3    # "data":Lcom/mezzo/common/network/data/DataNTPkgAgList;
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/Track$8;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 320
    return-void
.end method
