.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$disallowedByAdmin:Z

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
    .param p2, "val$disallowedByAdmin"    # Z
    .param p3, "val$mode"    # I

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$disallowedByAdmin:Z

    iput p3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 414
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$disallowedByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 415
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 417
    return-void

    .line 419
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    if-eq v0, v1, :cond_3

    .line 421
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const-string/jumbo v0, "UsbModeChooserActivity"

    const-string/jumbo v1, "onClick() : return doing role swap to supplying power"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    :cond_1
    const-string/jumbo v0, "UsbModeChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick() - click current mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->checkSmartSwtichTransfer()Z

    move-result v0

    .line 426
    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 429
    const v2, 0x7f0b05fd

    .line 428
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 431
    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/UsbBackend;->setMode(I)V

    .line 437
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    if-ne v0, v3, :cond_4

    .line 438
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0, v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z

    .line 439
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 413
    :cond_3
    :goto_0
    return-void

    .line 443
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    .line 444
    const-string/jumbo v0, "UsbModeChooserActivity"

    const-string/jumbo v1, "Finish by set mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    goto :goto_0
.end method
