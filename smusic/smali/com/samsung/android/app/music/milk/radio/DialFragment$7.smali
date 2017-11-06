.class Lcom/samsung/android/app/music/milk/radio/DialFragment$7;
.super Landroid/content/BroadcastReceiver;
.source "DialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "intentAction":Ljava/lang/String;
    const-string v5, "DialFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : onReceive intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v5, "com.samsung.common.service.action.MOBILE_NETWORK_SETTING_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 513
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->isUsingData(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$100(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 517
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 518
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(Z)V

    .line 522
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$700(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$1;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$7;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 530
    :cond_3
    const-string v5, "com.samsung.radio.REQUEST_FAVORITE"

    .line 531
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 532
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$800(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 534
    const-string/jumbo v5, "result"

    const/4 v6, -0x1

    .line 535
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 537
    .local v3, "result":I
    const-string v5, "FavoriteAction"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "request":Ljava/lang/String;
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .line 540
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$900(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 541
    const-string v5, "DialFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : Current Track("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .line 542
    invoke-static {v7}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$900(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Favorite."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 541
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v2    # "request":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_4
    const-string v5, "com.samsung.radio.action.jump.indication"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 547
    const-string v5, "StationID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "stationId":Ljava/lang/String;
    const-string v5, "ForcePlay"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 549
    .local v0, "forcePlay":Z
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;

    invoke-direct {v6, p0, v4, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$7;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
