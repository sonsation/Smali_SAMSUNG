.class Lcom/samsung/android/settings/face/FaceLockSettings$4;
.super Ljava/lang/Object;
.source "FaceLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceLockSettings;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceLockSettings;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 535
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "showRetryDialog dismissed! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->-get0(Lcom/samsung/android/settings/face/FaceLockSettings;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    .line 534
    return-void
.end method
