.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showIrisPPPDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 3714
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3717
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3718
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3719
    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "lock_screen_iris"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3720
    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3721
    const-string/jumbo v2, "from_irisSettings"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3722
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3726
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 3715
    return-void

    .line 3723
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
