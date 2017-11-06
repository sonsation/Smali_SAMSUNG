.class Lcom/mapps/android/share/Track$2;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestServerPkgConf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mezzo/common/network/request/OnConnectionListener;)V
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

.field private final synthetic val$section_no:Ljava/lang/String;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$2;->this$0:Lcom/mapps/android/share/Track;

    iput p2, p0, Lcom/mapps/android/share/Track$2;->val$type:I

    iput-object p3, p0, Lcom/mapps/android/share/Track$2;->val$pub_no:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/share/Track$2;->val$media_no:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/Track$2;->val$section_no:Ljava/lang/String;

    iput-object p6, p0, Lcom/mapps/android/share/Track$2;->val$listener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 171
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 174
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 175
    .local v2, "sendMsg":Landroid/os/Message;
    iget v3, p0, Lcom/mapps/android/share/Track$2;->val$type:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 176
    new-instance v0, Lcom/mapps/android/share/Track$TrackAdInfo;

    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->this$0:Lcom/mapps/android/share/Track;

    invoke-direct {v0, v3}, Lcom/mapps/android/share/Track$TrackAdInfo;-><init>(Lcom/mapps/android/share/Track;)V

    .line 177
    .local v0, "adInfo":Lcom/mapps/android/share/Track$TrackAdInfo;
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->val$pub_no:Ljava/lang/String;

    iput-object v3, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->val$media_no:Ljava/lang/String;

    iput-object v3, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->val$section_no:Ljava/lang/String;

    iput-object v3, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->section_no:Ljava/lang/String;

    .line 180
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    const-string/jumbo v3, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605InitInfo"

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/mezzo/common/network/request/RequestInitInfo;

    sget-object v3, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/mezzo/common/network/request/RequestInitInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 183
    .local v1, "requestInitInfo":Lcom/mezzo/common/network/request/RequestInitInfo;
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->val$listener:Lcom/mezzo/common/network/request/OnConnectionListener;

    invoke-virtual {v1, v3}, Lcom/mezzo/common/network/request/RequestInitInfo;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 184
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->this$0:Lcom/mapps/android/share/Track;

    new-instance v4, Lcom/mezzo/common/network/Nt;

    sget-object v5, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5, v6, v7, v7}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v3, v4}, Lcom/mapps/android/share/Track;->access$0(Lcom/mapps/android/share/Track;Lcom/mezzo/common/network/Nt;)V

    .line 185
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v3}, Lcom/mapps/android/share/Track;->access$1(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/share/Track$2;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v4}, Lcom/mapps/android/share/Track;->access$2(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 186
    iget-object v3, p0, Lcom/mapps/android/share/Track$2;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v3}, Lcom/mapps/android/share/Track;->access$1(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 188
    return-void
.end method
