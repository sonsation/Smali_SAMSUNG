.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;
.super Ljava/lang/Object;
.source "MySubscriptionDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonItemClick(ILjava/lang/String;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "MySubscriptionDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onButtonItemClick action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-nez p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->finish()V

    .line 152
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e9

    .line 131
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03ea

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0092

    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    .line 142
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .line 143
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ACTION_CONTINUE_SUBSCRIPTION"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    const/16 v1, 0x2717

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchConfirmPasswordPopup(Landroid/app/Activity;I)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "MySubscriptionDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onButtonItemClick unexpect action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
