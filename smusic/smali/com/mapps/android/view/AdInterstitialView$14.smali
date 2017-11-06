.class Lcom/mapps/android/view/AdInterstitialView$14;
.super Landroid/os/Handler;
.source "AdInterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTSSP;

.field private final synthetic val$div:I

.field private final synthetic val$img_name:Ljava/lang/String;

.field private final synthetic val$next:Z


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput p2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$div:I

    iput-boolean p3, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$next:Z

    iput-object p4, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    iput-object p5, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$img_name:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget v1, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$div:I

    iget-boolean v2, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$next:Z

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$14;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v5}, Lcom/mapps/android/view/AdInterstitialView;->access$25(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$14;->val$img_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView;->access$26(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    .line 383
    return-void
.end method
