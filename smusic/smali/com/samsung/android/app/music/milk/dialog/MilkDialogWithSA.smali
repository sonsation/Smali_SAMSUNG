.class public Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "MilkDialogWithSA.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;


# instance fields
.field private mDismissAfterSignin:Z

.field private mDismissAfterSignout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->mDismissAfterSignin:Z

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->mDismissAfterSignout:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onAttach(Landroid/app/Activity;)V

    .line 29
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 30
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 22
    .local v0, "ret":Landroid/app/Dialog;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onDestroyView()V

    .line 38
    return-void
.end method

.method public onFeatureChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string/jumbo v1, "user_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 52
    .local v0, "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->mDismissAfterSignin:Z

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->dismissAllowingStateLoss()V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->mDismissAfterSignout:Z

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected setDismissAfterSignIn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->mDismissAfterSignin:Z

    .line 42
    return-void
.end method

.method protected setDismissAfterSignOut(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->mDismissAfterSignout:Z

    .line 46
    return-void
.end method
