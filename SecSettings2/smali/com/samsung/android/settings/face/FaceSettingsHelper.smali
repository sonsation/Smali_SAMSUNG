.class public Lcom/samsung/android/settings/face/FaceSettingsHelper;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockWithoutSwipeValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "FcstFaceSettingsHelper"

    const-string/jumbo v1, "getFaceUnlockPopupNeeded : Popup needed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getIrisUnlockWithoutSwipeValue(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "use_iris_firstlock"

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 119
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "FcstFaceSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisUnlockWithoutSwipeValue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v0

    .line 118
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public static setFaceUnlockWithSwipeValue(Landroid/content/Context;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "face_swipe_unlock"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    const-string/jumbo v0, "FcstFaceSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFaceUnlockWithSwipeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIrisUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "use_iris_firstlock"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 114
    const-string/jumbo v0, "FcstFaceSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIrisUnlockWithoutSwipeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "faceUnlock"    # Landroid/preference/SwitchPreference;
    .param p2, "userId"    # I
    .param p3, "isFinish"    # Z

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V

    .line 50
    return-void
.end method

.method public static showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "faceUnlock"    # Landroid/preference/SwitchPreference;
    .param p2, "swipeUnlock"    # Landroid/preference/SwitchPreference;
    .param p3, "userId"    # I
    .param p4, "isFinish"    # Z

    .prologue
    const/4 v7, 0x0

    .line 55
    const-string/jumbo v0, "FcstFaceSettingsHelper"

    const-string/jumbo v1, "showFaceLockTurnOnDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v8, ""

    .line 58
    .local v8, "message":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0766

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "- "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0767

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 61
    if-eqz p0, :cond_0

    .line 62
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 63
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 65
    .local v9, "swipeDialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0765

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0770

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 68
    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;

    move-object v1, p0

    move v2, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper$1;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Z)V

    .line 67
    const/4 v1, -0x1

    invoke-virtual {v9, v1, v10, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b076f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v7

    .line 86
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 85
    const/4 v2, -0x2

    invoke-virtual {v9, v2, v1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    new-instance v1, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;

    move-object v2, p0

    move v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILandroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Z)V

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 54
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v9    # "swipeDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v0, "FcstFaceSettingsHelper"

    const-string/jumbo v1, "context is null. Skip showFaceLockTurnOnDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
