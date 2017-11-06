.class Lcom/mapps/android/view/EndingAdView$17;
.super Landroid/os/Handler;
.source "EndingAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->SendRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput p2, p0, Lcom/mapps/android/view/EndingAdView$17;->val$type:I

    .line 510
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$17;)Lcom/mapps/android/view/EndingAdView;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 513
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v3, Lcom/mezzo/common/network/Nt;

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v4}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v2, v3}, Lcom/mapps/android/view/EndingAdView;->access$23(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/Nt;)V

    .line 514
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$24(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/Nt;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/EndingAdView$17$1;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$17$1;-><init>(Lcom/mapps/android/view/EndingAdView$17;)V

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 526
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mapps/android/view/EndingAdView;->access$25(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 527
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 528
    .local v1, "sendMsg":Landroid/os/Message;
    iget v2, p0, Lcom/mapps/android/view/EndingAdView$17;->val$type:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 529
    new-instance v0, Lcom/mezzo/common/network/request/RequestEnd;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/mezzo/common/network/request/RequestEnd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 530
    .local v0, "requestEnd":Lcom/mezzo/common/network/request/RequestEnd;
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$26(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/request/RequestEnd;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 531
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$17;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$24(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/Nt;

    move-result-object v2

    new-array v3, v7, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 532
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 533
    return-void
.end method
