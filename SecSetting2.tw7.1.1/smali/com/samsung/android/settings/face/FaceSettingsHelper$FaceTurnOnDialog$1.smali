.class Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;
    .param p2, "val$lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->-get0(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->-get2(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->-get0(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->-get2(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->-get1(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$1:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->-get1(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOnFaceLock()V

    .line 120
    :cond_0
    return-void
.end method
