.class Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;
.super Ljava/lang/Object;
.source "PpmtPopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

.field final synthetic val$leftBtnActions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->val$leftBtnActions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$002(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Z)Z

    .line 384
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$100(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$200(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->val$leftBtnActions:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    .line 387
    return-void
.end method
