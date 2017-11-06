.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;
.super Ljava/lang/Object;
.source "EditStationActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

.field final synthetic val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showLoading(Z)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->access$102(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;Z)Z

    .line 219
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->val$fg:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->showLoading(Z)V

    .line 228
    :cond_0
    const/16 v0, 0xd2

    if-eq p2, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error !!! - API is not right"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->access$102(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;Z)Z

    .line 236
    if-nez p3, :cond_2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.my.tab.update_mystation_list"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->finish()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a039c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
