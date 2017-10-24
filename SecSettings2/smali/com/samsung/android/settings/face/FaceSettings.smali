.class public Lcom/samsung/android/settings/face/FaceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FaceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceSettings$1;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z


# instance fields
.field private isRunRegister:Z

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDisclamierDialog:Landroid/app/AlertDialog;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceUnlock:Landroid/preference/SwitchPreference;

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedTurnOnCheck:Z

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwipeUnlock:Landroid/preference/SwitchPreference;

.field private mToken:[B

.field private mUnlockCategory:Landroid/preference/PreferenceCategory;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceSettings;I)V
    .locals 0
    .param p1, "stringID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceSettings;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/face/FaceSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 138
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 139
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 140
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    .line 150
    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    .line 884
    new-instance v0, Lcom/samsung/android/settings/face/FaceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 55
    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->stopFaceSettings()V

    .line 167
    sget-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    .line 162
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finishFaceSettings()V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 332
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    .line 345
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->setFaceSettingsPreference()V

    .line 352
    return-object v0

    .line 342
    :cond_1
    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private deleteFace()Z
    .locals 4

    .prologue
    .line 835
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 836
    const/4 v2, 0x0

    return v2

    .line 839
    :cond_0
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "deleteFace"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    const v2, 0x7f0b06cb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 848
    :cond_1
    const v2, 0x7f0b0757

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "tempStr":Ljava/lang/String;
    const v2, 0x7f0b0756

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 852
    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 851
    const v3, 0x7f0b0436

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 865
    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$5;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 864
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 872
    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$6;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 878
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 879
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 881
    const/4 v2, 0x1

    return v2
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 6
    .param p1, "previousStage"    # Ljava/lang/String;

    .prologue
    .line 808
    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    if-eqz v3, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0714

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 810
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 807
    .end local v2    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 812
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 813
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 816
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v3, :cond_1

    .line 817
    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 819
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v3, :cond_2

    .line 820
    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister already called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void

    .line 823
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    .line 824
    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/16 v3, 0x3e8

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFaceSettingsPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 649
    const-string/jumbo v2, "register_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 650
    const-string/jumbo v2, "unlock_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUnlockCategory:Landroid/preference/PreferenceCategory;

    .line 652
    const-string/jumbo v2, "key_facelock_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    .line 653
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v0, 0x1

    .line 654
    .local v0, "isFaceScreenLock":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 655
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFaceScreenLock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 658
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 661
    :cond_0
    const-string/jumbo v2, "key_facelock_swipe_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    .line 662
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "face_swipe_unlock"

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 664
    .local v1, "isSwipeUnlock":Z
    :goto_1
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSwipeUnlock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 667
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 668
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 673
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 676
    .end local v1    # "isSwipeUnlock":Z
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 648
    return-void

    .line 653
    .end local v0    # "isFaceScreenLock":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFaceScreenLock":Z
    goto/16 :goto_0

    .line 663
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSwipeUnlock":Z
    goto :goto_1

    .line 670
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private showDisclaimer()Z
    .locals 4

    .prologue
    .line 616
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 617
    const/4 v2, 0x0

    return v2

    .line 621
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 622
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0683

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 625
    const v2, 0x7f0b0758

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "tempStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 629
    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 628
    const v3, 0x7f0b0438

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    .line 643
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 645
    const/4 v2, 0x1

    return v2
.end method

.method private showSensorErrorDialog(I)V
    .locals 5
    .param p1, "stringID"    # I

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 903
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 904
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 905
    const v3, 0x7f0b075d

    .line 904
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 908
    new-instance v3, Lcom/samsung/android/settings/face/FaceSettings$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettings$7;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 907
    const v4, 0x104000a

    .line 904
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 914
    new-instance v3, Lcom/samsung/android/settings/face/FaceSettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettings$8;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 904
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 919
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 900
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 921
    :cond_0
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 796
    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 801
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopFaceSettings()V
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "stopFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 419
    return-void
.end method


# virtual methods
.method protected finishFaceSettings()V
    .locals 2

    .prologue
    .line 178
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "finishFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 177
    :cond_2
    return-void

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 520
    const v0, 0x7f0b180a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x31

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 525
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 526
    const-string/jumbo v0, ""

    .line 527
    .local v0, "previousStage":Ljava/lang/String;
    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sparse-switch p1, :sswitch_data_0

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 531
    :sswitch_0
    if-eqz p3, :cond_1

    .line 532
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    .line 533
    const-string/jumbo v1, "previousStage"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_2

    .line 536
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    .line 539
    :cond_2
    if-ne p2, v4, :cond_3

    .line 540
    const-string/jumbo v1, "FaceSettings_unlock_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    goto :goto_0

    .line 544
    :cond_3
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :sswitch_1
    if-ne p2, v4, :cond_4

    .line 550
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz p3, :cond_0

    .line 553
    const-string/jumbo v1, "hw_auth_token"

    .line 552
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    goto :goto_0

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    goto :goto_0

    .line 528
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 591
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 261
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0714

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    .line 268
    return-void

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 278
    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 279
    .local v1, "token":[B
    const-string/jumbo v2, "isAfw"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    .line 280
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    .line 282
    iput-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    .line 283
    const-string/jumbo v2, "needTurnOnCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    .line 284
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needTurnOnCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz v1, :cond_2

    .line 289
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    .line 293
    .end local v1    # "token":[B
    :cond_2
    if-eqz p1, :cond_3

    .line 294
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    .line 307
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->setHasOptionsMenu(Z)V

    .line 311
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 260
    return-void

    .line 304
    :cond_4
    const v2, 0x7f080114

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 596
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 598
    const/4 v0, 0x1

    const v1, 0x7f0b0683

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 595
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 565
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_0

    .line 568
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    .line 576
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_2

    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v0

    .line 581
    :cond_1
    if-gez v0, :cond_2

    .line 582
    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .end local v0    # "result":I
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 564
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    .line 446
    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iput-boolean p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    .line 444
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 603
    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 612
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 607
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->showDisclaimer()Z

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 425
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104bd

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 429
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    .line 430
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0    # "current":Landroid/app/Fragment;
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 424
    return-void

    .line 432
    .restart local v0    # "current":Landroid/app/Fragment;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_0

    .line 434
    .end local v0    # "current":Landroid/app/Fragment;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 435
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_0

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x100

    const/4 v6, 0x0

    .line 479
    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=====onPreferenceChange : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x1

    .line 482
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V

    .line 516
    :cond_0
    :goto_0
    return v1

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 495
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 501
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 506
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    const-string/jumbo v2, "FaceSettings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 513
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 458
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=====onPreferenceTreeClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 462
    .local v1, "ret":Z
    const-string/jumbo v2, "key_facelock_register"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    const-string/jumbo v2, "FaceSettings_register"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    .line 474
    :goto_0
    return v1

    .line 462
    :cond_0
    const-string/jumbo v2, "key_facelock_remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z

    goto :goto_0

    .line 472
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 383
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 384
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V

    .line 415
    :cond_2
    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    .line 382
    :cond_3
    return-void

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    goto :goto_0

    .line 399
    :cond_5
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    goto :goto_1

    .line 407
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 452
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 453
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 451
    return-void
.end method
