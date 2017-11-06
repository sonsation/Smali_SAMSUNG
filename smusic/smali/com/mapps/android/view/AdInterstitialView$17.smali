.class Lcom/mapps/android/view/AdInterstitialView$17;
.super Landroid/content/BroadcastReceiver;
.source "AdInterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 549
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 553
    const-string/jumbo v1, "opr_type"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 554
    .local v0, "nOperationType":I
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$35(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$35(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-interface {v1, v2, v0}, Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;->onFlickerType(Lcom/mapps/android/view/AdInterstitialView;I)V

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$36(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/listner/AdInterstitalListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$36(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/listner/AdInterstitalListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-interface {v1, v2, v0}, Lcom/mapps/android/listner/AdInterstitalListener;->onInterstitalToReceive(Landroid/view/View;I)V

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$37(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 560
    return-void
.end method
