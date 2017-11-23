.class public Lcom/samsung/android/settings/face/UseFaceLockSettings;
.super Landroid/app/Activity;
.source "UseFaceLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private laterBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserId:I

.field private okBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getFaceLockDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 91
    .local v2, "passwordQuality":I
    const-string/jumbo v1, ""

    .line 92
    .local v1, "lockTypeSummary":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 94
    .local v0, "description":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 120
    const-string/jumbo v3, "FcstUseFaceLockSettings"

    const-string/jumbo v4, "Wrong case!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0b0783

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    return-object v0

    .line 97
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1294

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1290

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b128d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b128e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 117
    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b027c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1000 -> :sswitch_4
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->okBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    const/4 v2, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v4, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->finish()V

    .line 72
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v4, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 56
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 57
    const v0, 0x7f040288

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->setContentView(I)V

    .line 59
    const v0, 0x7f11063d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->descriptionTextView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getFaceLockDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v0, 0x7f0b0782

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->setTitle(I)V

    .line 63
    const v0, 0x7f1103b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->laterBtn:Landroid/widget/Button;

    .line 64
    const v0, 0x7f1103b3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->okBtn:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->laterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
