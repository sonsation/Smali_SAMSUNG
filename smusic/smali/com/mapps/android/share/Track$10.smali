.class Lcom/mapps/android/share/Track$10;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestServerPkgList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$listener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private final synthetic val$media_no:Ljava/lang/String;

.field private final synthetic val$pub_no:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$10;->val$pub_no:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapps/android/share/Track$10;->val$media_no:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/share/Track$10;->val$listener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 394
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 397
    new-instance v0, Lcom/mapps/android/share/Track$TrackAdInfo;

    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-direct {v0, v3}, Lcom/mapps/android/share/Track$TrackAdInfo;-><init>(Lcom/mapps/android/share/Track;)V

    .line 398
    .local v0, "adInfo":Lcom/mapps/android/share/Track$TrackAdInfo;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 399
    .local v2, "sendMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->val$pub_no:Ljava/lang/String;

    iput-object v3, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    .line 400
    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->val$media_no:Ljava/lang/String;

    iput-object v3, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    .line 401
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    new-instance v1, Lcom/mezzo/common/network/request/RequestPkgAgList;

    sget-object v3, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/mezzo/common/network/request/RequestPkgAgList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 403
    .local v1, "requestPkgAgList":Lcom/mezzo/common/network/request/RequestPkgAgList;
    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->val$listener:Lcom/mezzo/common/network/request/OnConnectionListener;

    invoke-virtual {v1, v3}, Lcom/mezzo/common/network/request/RequestPkgAgList;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 404
    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    new-instance v4, Lcom/mezzo/common/network/Nt;

    sget-object v5, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5, v6, v7, v7}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v3, v4}, Lcom/mapps/android/share/Track;->access$0(Lcom/mapps/android/share/Track;Lcom/mezzo/common/network/Nt;)V

    .line 405
    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v3}, Lcom/mapps/android/share/Track;->access$1(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v4}, Lcom/mapps/android/share/Track;->access$2(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 406
    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v3}, Lcom/mapps/android/share/Track;->access$1(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 408
    return-void
.end method
