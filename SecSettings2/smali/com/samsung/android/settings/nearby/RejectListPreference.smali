.class public Lcom/samsung/android/settings/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearby/RejectListPreference$1;
    }
.end annotation


# static fields
.field private static isEmptyPopup:Z


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .line 120
    new-instance v0, Lcom/samsung/android/settings/nearby/RejectListPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/RejectListPreference$1;-><init>(Lcom/samsung/android/settings/nearby/RejectListPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 32
    const v0, 0x7f0b037b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 33
    const v0, 0x7f0b042f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setNegativeButtonText(I)V

    .line 28
    return-void
.end method

.method private getRejectList()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getRejectList()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    return-object v1
.end method

.method private getRejectListValue()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getRejectListValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 58
    const-string/jumbo v0, "RejectListPreference"

    const-string/jumbo v1, "onPrepareDialogBuilder"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 57
    return-void
.end method

.method public setEnabler(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .param p1, "enabler"    # Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .line 38
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 64
    const-string/jumbo v3, "RejectListPreference"

    const-string/jumbo v4, "showDialog"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->getRejectList()[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "entries":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->getRejectListValue()[Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "entryValues":[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 70
    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    if-eqz v3, :cond_2

    .line 71
    const-string/jumbo v3, "RejectListPreference"

    const-string/jumbo v4, "showDialog"

    const-string/jumbo v5, "isEmptyPopup is shown"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 69
    :cond_1
    array-length v3, v1

    if-lt v3, v6, :cond_0

    array-length v3, v2

    if-lt v3, v6, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 97
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 100
    .local v0, "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 63
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 74
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v5, 0x7f0b0389

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v5, 0x7f0b0375

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 77
    new-instance v4, Lcom/samsung/android/settings/nearby/RejectListPreference$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nearby/RejectListPreference$2;-><init>(Lcom/samsung/android/settings/nearby/RejectListPreference;)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 85
    new-instance v4, Lcom/samsung/android/settings/nearby/RejectListPreference$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nearby/RejectListPreference$3;-><init>(Lcom/samsung/android/settings/nearby/RejectListPreference;)V

    .line 84
    const v5, 0x7f0b0438

    .line 74
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 91
    sput-boolean v6, Lcom/samsung/android/settings/nearby/RejectListPreference;->isEmptyPopup:Z

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    .prologue
    .line 105
    const-string/jumbo v0, "RejectListPreference"

    const-string/jumbo v1, "updateDialog"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "RejectListPreference"

    const-string/jumbo v1, "updateDialog"

    const-string/jumbo v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
