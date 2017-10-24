.class final Lcom/samsung/android/settings/face/FaceSettingsHelper$1;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$faceUnlock:Landroid/preference/SwitchPreference;

.field final synthetic val$isFinish:Z

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$swipeUnlock:Landroid/preference/SwitchPreference;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Z)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$userId"    # I
    .param p3, "val$lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p4, "val$faceUnlock"    # Landroid/preference/SwitchPreference;
    .param p5, "val$swipeUnlock"    # Landroid/preference/SwitchPreference;
    .param p6, "val$isFinish"    # Z

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$userId:I

    iput-object p3, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$faceUnlock:Landroid/preference/SwitchPreference;

    iput-object p5, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$swipeUnlock:Landroid/preference/SwitchPreference;

    iput-boolean p6, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$isFinish:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setIrisUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$userId:I

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$faceUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$faceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$swipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$swipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$isFinish:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 82
    :cond_1
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    return-void
.end method
