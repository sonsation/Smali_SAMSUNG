.class Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$5;
.super Ljava/lang/Object;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$5;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1020
    const-string/jumbo v0, "KnoxChooseLockTwoFactor"

    const-string/jumbo v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$5;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get0(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1019
    return-void
.end method
