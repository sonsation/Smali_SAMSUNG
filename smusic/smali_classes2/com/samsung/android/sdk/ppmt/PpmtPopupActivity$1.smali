.class Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;
.super Ljava/lang/Object;
.source "PpmtPopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$002(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Z)Z

    .line 208
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$100(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$200(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    .line 211
    return-void
.end method
