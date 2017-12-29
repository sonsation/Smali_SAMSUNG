.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->isResumed()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    .line 209
    return-void

    .line 212
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->-get0(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 213
    .local v0, "checkedID":I
    packed-switch v0, :pswitch_data_0

    .line 203
    .end local v0    # "checkedID":I
    :goto_0
    return-void

    .line 215
    .restart local v0    # "checkedID":I
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v5, "localIntent4":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "setupwizard_face"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "checkedID":I
    .end local v5    # "localIntent4":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v0    # "checkedID":I
    :pswitch_1
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v4, "localIntent3":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "lock_screen_iris"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v6, "from_setupwizard"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v4, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 232
    .end local v4    # "localIntent3":Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v3, "localIntent2":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "google_setupwizard_fingerprint"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v6, "from_setupwizard"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 239
    .end local v3    # "localIntent2":Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.SETUP_LOCK_SCREEN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "localIntent1":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v6, "fromSetupwizard"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasEnrolledFaceAndNonSecure(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    const-string/jumbo v6, "faceAuthNotNeed"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v2, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 248
    .end local v2    # "localIntent1":Landroid/content/Intent;
    :pswitch_4
    const v6, 0x7f0b0ad0

    invoke-static {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->newInstance(I)Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    move-result-object v6

    .line 249
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "dialog"

    .line 248
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x7f1107a8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
