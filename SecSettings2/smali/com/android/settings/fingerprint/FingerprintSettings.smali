.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$1;,
        Lcom/android/settings/fingerprint/FingerprintSettings$2;,
        Lcom/android/settings/fingerprint/FingerprintSettings$3;,
        Lcom/android/settings/fingerprint/FingerprintSettings$4;,
        Lcom/android/settings/fingerprint/FingerprintSettings$5;,
        Lcom/android/settings/fingerprint/FingerprintSettings$6;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;,
        Lcom/android/settings/fingerprint/FingerprintSettings$Survey;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z

.field private static mEdit_TextView:Landroid/widget/TextView;

.field protected static mFragment:Landroid/app/Fragment;

.field private static mListView:Landroid/widget/ListView;


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field private colorId_identifiedId:I

.field private focusEditButtonRunnable:Ljava/lang/Runnable;

.field private isRunRegister:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mEnrolledFingerCount:I

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mInFingerprintLockout:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSamsungAccount:Landroid/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mScreenLock:Landroid/preference/SwitchPreference;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUserId:I

.field private mWebSignIn:Landroid/preference/SwitchPreference;

.field private notificationManager:Landroid/app/NotificationManager;

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private retryFingerprintRunnable:Ljava/lang/Runnable;

.field private skipHuntip:Z

.field private through_onpreferencechange:Z

.field private twselectionChecklist:[Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettings;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->values()[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_DISABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENTRY_UNLOCK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->-com-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic -set4(Lcom/android/settings/fingerprint/FingerprintSettings;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->registerAuthenticate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "previousStage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V
    .locals 0
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V
    .locals 0
    .param p1, "fId"    # I
    .param p2, "twChecklist"    # [Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V
    .locals 0
    .param p1, "mode"    # Z
    .param p2, "idx"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateTwMultiSelected(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 175
    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    .line 176
    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    .line 226
    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    .line 229
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 162
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    .line 164
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    .line 165
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    .line 166
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 168
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 170
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    .line 172
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 178
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    .line 202
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 238
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    .line 239
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    .line 246
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    .line 252
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 277
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    .line 423
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    .line 846
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    .line 1369
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 623
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 625
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 626
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 629
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 631
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 632
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    .line 636
    move v2, v0

    .line 637
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 639
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 640
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 641
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 635
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "j":I
    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 646
    const-string/jumbo v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 648
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 649
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 650
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 655
    :cond_3
    const-string/jumbo v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 659
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    .line 660
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 661
    .local v1, "item":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : fid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], Name["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], Gid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 665
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_6

    .line 666
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 667
    .restart local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    .line 668
    .local v3, "pref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {v3, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 671
    const v4, 0x7f040106

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setLayoutResource(I)V

    .line 672
    invoke-virtual {v3, v8}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 673
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 674
    invoke-virtual {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 677
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_5
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 678
    const-string/jumbo v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v0    # "i":I
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateAddPreference()V

    .line 622
    return-void

    .line 681
    :cond_7
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 682
    const-string/jumbo v4, "FpstFingerprintSettings"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    .prologue
    .line 324
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    .line 328
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 323
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_0
.end method

.method private checkMobileKeyboard()Z
    .locals 5

    .prologue
    .line 2010
    const/4 v1, 0x0

    .line 2011
    .local v1, "isNotAvailableFP":Z
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2013
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2014
    invoke-static {v0}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2015
    const/4 v1, 0x1

    .line 2019
    :cond_0
    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMobileKeyboard. return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isAdded() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    return v1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 603
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 604
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 607
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    .line 614
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    .line 615
    if-eqz v0, :cond_1

    .line 616
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 618
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateEditbtn()V

    .line 619
    return-object v0

    .line 611
    :cond_2
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSamsungAccountVerification()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1620
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1621
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerprintSamsungAccountVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return v0

    .line 1620
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1604
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v1, :cond_2

    .line 1605
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1606
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerprintVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return v0

    .line 1605
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 1609
    .end local v0    # "result":Z
    :cond_2
    return v3
.end method

.method protected static getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private getIndexForRegisteration()I
    .locals 1

    .prologue
    .line 1952
    const/4 v0, -0x1

    return v0
.end method

.method private getLoggingExtraValue(Z)Ljava/lang/String;
    .locals 5
    .param p1, "withFP"    # Z

    .prologue
    .line 1829
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1830
    .local v1, "passwordQuality":I
    const-string/jumbo v0, ""

    .line 1832
    .local v0, "extraValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1833
    const-string/jumbo v0, "Fingerprint"

    .line 1836
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1837
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    sparse-switch v1, :sswitch_data_0

    .line 1861
    :goto_0
    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return-object v0

    .line 1847
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1852
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1855
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1858
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DirectionLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1844
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private isFingerprintDisabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 569
    const/4 v3, 0x0

    .line 571
    .local v3, "isDisabledByEDM":Z
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 573
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 574
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return v7

    .line 578
    :cond_0
    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v9, v6}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 582
    .local v2, "isDisabledByDPM":Z
    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 583
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 584
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    .line 585
    if-nez v1, :cond_1

    .line 586
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v3, 0x1

    .line 592
    :cond_1
    if-nez v3, :cond_3

    .end local v2    # "isDisabledByDPM":Z
    :goto_1
    return v2

    .line 578
    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isDisabledByDPM":Z
    goto :goto_0

    .restart local v1    # "isBiometricAuthenticationEnabled":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 592
    goto :goto_1
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1646
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1647
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1649
    .local v1, "samsungAccnts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1650
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const/4 v2, 0x1

    return v2

    .line 1653
    :cond_0
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return v4
.end method

.method private registerAuthenticate()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "registerAuthenticate : Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 458
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    .line 460
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    if-nez v0, :cond_2

    .line 461
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 462
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v7, "attr":Landroid/os/Bundle;
    const-string/jumbo v0, "privileged_attr"

    const/4 v2, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 466
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    move-object v5, v1

    .line 465
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 452
    .end local v7    # "attr":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "renamedIndex"    # I
    .param p2, "renamedName"    # Ljava/lang/CharSequence;

    .prologue
    .line 1739
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_0

    .line 1742
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "renameFingerPrint not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return-void

    .line 1746
    :cond_0
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 1747
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 1772
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1774
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    .line 1738
    return-void
.end method

.method private retryFingerprint()V
    .locals 4

    .prologue
    .line 397
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "retryFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 6
    .param p1, "previousStage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1909
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1910
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    .line 1908
    :goto_0
    return-void

    .line 1911
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    if-eqz v3, :cond_1

    .line 1912
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0714

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1913
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1915
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1916
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1917
    const-string/jumbo v3, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getIndexForRegisteration()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1918
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1919
    const-string/jumbo v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1920
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1921
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v3, :cond_2

    .line 1922
    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1924
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v3, :cond_3

    .line 1925
    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister already called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    return-void

    .line 1928
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    .line 1929
    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :try_start_0
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v3, :cond_4

    .line 1933
    const/16 v3, 0x3e9

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1935
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v3, 0x3e8

    :try_start_1
    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1636
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1637
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1640
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1641
    .local v0, "result":Z
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return v0
.end method

.method private setFingerprintLock()V
    .locals 8

    .prologue
    const/4 v0, 0x5

    .line 1659
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "setFingerprintLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintScreenLockEnable()V

    .line 1663
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1664
    .local v7, "warningClearIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    if-eqz v7, :cond_0

    .line 1666
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1671
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1672
    const-string/jumbo v5, "screen-lock enabled : fingerprint"

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    .line 1670
    const/4 v2, 0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1658
    return-void
.end method

.method private setFingerprintPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1513
    const-string/jumbo v6, "register_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 1514
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    .line 1515
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "device_provisioned"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1520
    .local v1, "mDeviceProvisioned":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    .line 1521
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1523
    const-string/jumbo v6, "support_web_signin"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    .line 1525
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 1526
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1528
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.sbrowser"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-nez v6, :cond_1

    .line 1529
    :cond_0
    const-string/jumbo v6, "feature_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1533
    :cond_1
    const-string/jumbo v6, "support_samsung_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    .line 1534
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 1535
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1539
    :cond_2
    const-string/jumbo v6, "samsung_pay"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1540
    .local v3, "mSamsungPay":Landroid/preference/Preference;
    if-eqz v3, :cond_3

    .line 1541
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.spay"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1542
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-string/jumbo v6, "feature_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1557
    :cond_3
    :goto_0
    const-string/jumbo v6, "samsung_pass"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1558
    .local v2, "mSamsungPass":Landroid/preference/Preference;
    if-eqz v2, :cond_5

    .line 1559
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v6, :cond_a

    .line 1560
    :cond_4
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "Remove the SamsungPass"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string/jumbo v6, "feature_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1567
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1568
    const-string/jumbo v6, "set_screen_lock"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    .line 1569
    const-string/jumbo v6, "unlock_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 1570
    .local v4, "mUnlockGroup":Landroid/preference/PreferenceGroup;
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    .line 1571
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1581
    .end local v4    # "mUnlockGroup":Landroid/preference/PreferenceGroup;
    :cond_6
    :goto_2
    if-eq v1, v11, :cond_7

    .line 1583
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1587
    :cond_7
    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    if-eqz v6, :cond_8

    .line 1588
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "Remove all feature and unlock category"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "feature_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1590
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "unlock_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1512
    :cond_8
    return-void

    .line 1546
    .end local v2    # "mSamsungPass":Landroid/preference/Preference;
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.spay"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1547
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v6, "0.0.00"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1548
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "Remove the SamsungPay. Stub application isntalled"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const-string/jumbo v6, "feature_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1551
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "FpstFingerprintSettings"

    const-string/jumbo v7, "Getting information of SamsungPay make the Exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1563
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mSamsungPass":Landroid/preference/Preference;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0703

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0702

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1574
    :cond_b
    const-string/jumbo v6, "set_screen_lock"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    .line 1575
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    .line 1576
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    .prologue
    .line 1684
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1683
    return-void
.end method

.method private setFingerprintScreenLockEnable()V
    .locals 5

    .prologue
    .line 1676
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "setFingerprintScreenLockEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1680
    .local v0, "message":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1675
    return-void
.end method

.method private setFingerprintVerification(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    if-eqz v1, :cond_2

    .line 1597
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1598
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFingerprintVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_2
    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 883
    if-gez p2, :cond_0

    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge p2, v2, :cond_3

    .line 888
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v2, p2

    .line 882
    :cond_1
    :goto_2
    return-void

    .line 888
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 890
    :cond_3
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1626
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1627
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1630
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1631
    .local v0, "result":Z
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    return v0
.end method

.method private showHuntipForFingerprintIdentification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 897
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "pref_huntip"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 898
    .local v1, "isFirstHuntip":Ljava/lang/Boolean;
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showHuntipForFingerprintIdentification [mEnrolledFingerCount, isFirstHuntip] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 901
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    if-nez v5, :cond_3

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 904
    .local v2, "mContext":Landroid/content/Context;
    if-eqz v2, :cond_2

    .line 905
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "pref_huntip"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 907
    .local v3, "mListView":Landroid/widget/ListView;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040105

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 908
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110383

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 909
    .local v0, "closeBtn":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 910
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings$7;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    :cond_0
    if-eqz v3, :cond_1

    .line 923
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 896
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v2    # "mContext":Landroid/content/Context;
    .end local v3    # "mListView":Landroid/widget/ListView;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 926
    .restart local v2    # "mContext":Landroid/content/Context;
    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "showHuntipForFingerprintIdentification : SettingsActivity is null, Skip Huntip, will try again"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    .end local v2    # "mContext":Landroid/content/Context;
    :cond_3
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 930
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "showHuntipForFingerprintIdentification : skipHuntip is true, Skip Huntip, will try again"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMobileKeyboardToastMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1903
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0b0680

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b0731

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1904
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1902
    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1891
    const-string/jumbo v1, "FpstFingerprintSettings"

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

    .line 1892
    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1893
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1895
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1896
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    :goto_0
    return-void

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1867
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1869
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1871
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1872
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    :goto_0
    return-void

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1879
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1881
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1883
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1884
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    :goto_0
    return-void

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startSelectListUI(I[Z)V
    .locals 8
    .param p1, "fId"    # I
    .param p2, "twChecklist"    # [Z

    .prologue
    .line 1710
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 1711
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSelectListUI : fId["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "], twChecklist["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1713
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "selected_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1714
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1715
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1716
    if-eqz p2, :cond_0

    .line 1717
    const-string/jumbo v0, "twmultiselected_id"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1723
    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTablet : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1725
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    .line 1726
    .local v7, "cxt":Landroid/content/Context;
    if-nez v7, :cond_1

    .line 1727
    return-void

    :cond_1
    move-object v0, v7

    .line 1728
    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings_MultiSelect"

    const v3, 0x7f0b0680

    const/4 v4, 0x0

    const/16 v6, 0x3ef

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1709
    .end local v7    # "cxt":Landroid/content/Context;
    :goto_0
    return-void

    .line 1730
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings_MultiSelect"

    const/16 v4, 0x3ef

    const v5, 0x7f0b0680

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stopFingerprint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 313
    return-void

    .line 315
    :cond_1
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0
.end method

.method private updateAddPreference()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 705
    :try_start_0
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 706
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 707
    .local v3, "pr":Landroid/preference/Preference;
    const-string/jumbo v5, "key_fingerprint_add"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 708
    const v5, 0x7f0b06e2

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 709
    const v5, 0x7f040107

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 710
    const v5, 0x7f04010d

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 711
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 715
    .end local v3    # "pr":Landroid/preference/Preference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 717
    .local v2, "keyguardMgr":Landroid/app/KeyguardManager;
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v2, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 727
    :cond_1
    :goto_0
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v2    # "keyguardMgr":Landroid/app/KeyguardManager;
    :goto_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    .line 734
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 736
    :cond_2
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    .line 737
    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SAMSUNGACCOUNT updateRegisterPreference setChecked : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "fingerprint_used_samsungaccount"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 740
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 741
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 742
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 757
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 694
    :cond_4
    :goto_4
    return-void

    .line 718
    .restart local v2    # "keyguardMgr":Landroid/app/KeyguardManager;
    :cond_5
    :try_start_2
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 719
    .local v4, "pr_pass":Landroid/preference/Preference;
    const-string/jumbo v5, "change_reset_password"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 720
    const v5, 0x7f0b06dd

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 721
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 724
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v8, "updateAddPreference [add Change Reset Password]"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 728
    .end local v2    # "keyguardMgr":Landroid/app/KeyguardManager;
    .end local v4    # "pr_pass":Landroid/preference/Preference;
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v8, "updateAddPreference : IllegalStateException"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    move v5, v7

    .line 737
    goto :goto_2

    .line 743
    :catch_1
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 748
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 749
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 750
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 751
    :catch_2
    move-exception v0

    .line 752
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isFingerprintDisabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 759
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "Screen lock switch disable!"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 761
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto :goto_4

    .line 764
    :cond_9
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 765
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-ne v5, v6, :cond_a

    .line 766
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 767
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto/16 :goto_4

    .line 769
    :cond_a
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto/16 :goto_4
.end method

.method private updateEditbtn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 402
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "updateEditbtn"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 406
    .local v0, "isEnabledShowBtnBg":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0400fa

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->focusEditButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    return-void

    .line 404
    .end local v0    # "isEnabledShowBtnBg":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isEnabledShowBtnBg":Z
    goto :goto_0

    .line 407
    :cond_2
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "skip update Edit BG catetory"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .locals 11
    .param p1, "mode"    # Z
    .param p2, "idx"    # I

    .prologue
    monitor-enter p0

    .line 1469
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v4, v8, :cond_5

    .line 1470
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    .line 1471
    .local v2, "fId":I
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    .line 1472
    .local v5, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 1473
    .local v3, "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v7

    .line 1474
    .local v7, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 1476
    .local v6, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 1477
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tv":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1479
    :cond_0
    if-eqz v6, :cond_3

    .line 1480
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_1

    .line 1481
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    .line 1483
    :cond_1
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v8, :cond_2

    .line 1484
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    .line 1487
    :cond_2
    if-eqz p1, :cond_4

    .line 1488
    if-ne p2, v2, :cond_3

    .line 1489
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1490
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1491
    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIdentifiedFinger identified["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1495
    :cond_4
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1496
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1497
    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateIdentifiedFinger["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1503
    .end local v2    # "fId":I
    .end local v3    # "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    .end local v5    # "prefName":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v8, "FpstFingerprintSettings"

    const-string/jumbo v9, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    :goto_2
    monitor-exit p0

    .line 1462
    return-void

    .line 1506
    :catch_1
    move-exception v1

    .line 1507
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "FpstFingerprintSettings"

    const-string/jumbo v9, "updateIdentifiedFinger : Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0b043c

    const/4 v7, 0x2

    const v6, 0x7f0b042e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1395
    if-nez p1, :cond_0

    .line 1396
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "updateOptionsMenu : menu is Null. Skip update"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return-void

    .line 1400
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOptionsMenu : enrolledFingerprintNum["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const-string/jumbo v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1405
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_2

    .line 1406
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1407
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1393
    :cond_1
    :goto_0
    return-void

    .line 1409
    :cond_2
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1412
    :cond_3
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_5

    .line 1413
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    :cond_4
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1417
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1418
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1419
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1420
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1422
    :cond_7
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1425
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1426
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 937
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V

    .line 935
    return-void
.end method

.method private updateTwMultiSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 875
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    .line 876
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V

    .line 874
    :goto_0
    return-void

    .line 878
    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public editKeyPressed()V
    .locals 2

    .prologue
    .line 2065
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    .line 2064
    return-void
.end method

.method protected finishFingerprintSettings()V
    .locals 2

    .prologue
    .line 339
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "finishFingerprintSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    .line 338
    :cond_1
    return-void

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1125
    const v0, 0x7f0b182a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 472
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 371
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError errMsgId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 374
    packed-switch p1, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 388
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 389
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 370
    :cond_1
    return-void

    .line 376
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    return-void

    .line 378
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    .line 380
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 382
    const-wide/16 v4, 0x7530

    .line 381
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1130
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1131
    const-string/jumbo v10, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "=====onActivityResult requestCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " resultCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sparse-switch p1, :sswitch_data_0

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1134
    :sswitch_0
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    .line 1136
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1137
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1138
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1139
    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1139
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 1145
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1146
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1147
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1148
    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1149
    :catch_1
    move-exception v1

    .line 1150
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1148
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 1156
    :sswitch_1
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_4

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_6

    .line 1158
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1159
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1160
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1161
    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_5

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1162
    :catch_2
    move-exception v1

    .line 1163
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1161
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 1167
    :cond_6
    :try_start_3
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1168
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1169
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1170
    const-string/jumbo v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_7

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1171
    :catch_3
    move-exception v1

    .line 1172
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1170
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 1180
    :sswitch_2
    if-eqz p3, :cond_8

    .line 1181
    const-string/jumbo v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    .line 1183
    :cond_8
    iget-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v10, :cond_9

    .line 1184
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "reset runRegister"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    .line 1187
    :cond_9
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_a

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_11

    .line 1189
    :cond_a
    const/4 v5, 0x0

    .line 1190
    .local v5, "mStage":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 1191
    :try_start_4
    const-string/jumbo v10, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1193
    .end local v5    # "mStage":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "support_web_signin"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1194
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "previos stage is WebSingin"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    .line 1198
    :cond_c
    const-string/jumbo v10, "samsung_pay"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1199
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "Fingerprint registered successfully! Launch the SamsungPay"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    sget-object v10, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    .line 1201
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1202
    .local v4, "mIntent":Landroid/content/Intent;
    const-string/jumbo v10, "com.samsung.android.spay"

    const-string/jumbo v11, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const-string/jumbo v10, "previousStage"

    const-string/jumbo v11, "FingerprintSettings"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    .line 1205
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 1208
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_d
    const-string/jumbo v10, "support_samsung_account"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1209
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 1211
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1212
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "SamsungAccountSignedIn is False."

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 1214
    .local v6, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v10, "com.osp.app.signin"

    invoke-virtual {v6, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1215
    .local v9, "samsungAccnts":[Landroid/accounts/Account;
    array-length v8, v9

    .line 1217
    .local v8, "returnvalue_sa":I
    if-nez v8, :cond_f

    .line 1218
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1219
    .local v7, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .restart local v4    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v10, "mypackage"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    const-string/jumbo v10, "OSP_VER"

    const-string/jumbo v11, "OSP_02"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const-string/jumbo v10, "MODE"

    const-string/jumbo v11, "ADD_ACCOUNT"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    const-string/jumbo v10, "Is_From_SA_Verify"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1224
    const/16 v10, 0x66

    invoke-direct {p0, v4, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1240
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v6    # "manager":Landroid/accounts/AccountManager;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "returnvalue_sa":I
    .end local v9    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_e
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x3e8

    move/from16 v0, p1

    if-ne v0, v10, :cond_0

    .line 1241
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v10, :cond_0

    .line 1242
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "updateOptionsMenu after FIRSTFINGER_REQUEST_CODE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 1244
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v10}, Landroid/view/Menu;->clear()V

    .line 1245
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1226
    .restart local v6    # "manager":Landroid/accounts/AccountManager;
    .restart local v8    # "returnvalue_sa":I
    .restart local v9    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_f
    :try_start_5
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "returnvalue_sa is not 0"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 1237
    .end local v6    # "manager":Landroid/accounts/AccountManager;
    .end local v8    # "returnvalue_sa":I
    .end local v9    # "samsungAccnts":[Landroid/accounts/Account;
    :catch_4
    move-exception v2

    .line 1238
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "data is null!!"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1229
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_10
    :try_start_6
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1230
    .restart local v4    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v10, "client_id"

    const-string/jumbo v11, "s5d189ajvs"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string/jumbo v10, "client_secret"

    const-string/jumbo v11, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const-string/jumbo v10, "Is_From_SA_Verify"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1233
    const/16 v10, 0x65

    invoke-direct {p0, v4, v10}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 1248
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_11
    if-nez p2, :cond_12

    .line 1249
    if-eqz p3, :cond_0

    .line 1250
    const-string/jumbo v10, "enrollResult"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1251
    .local v3, "enrollResult":I
    const/4 v10, 0x1

    if-ne v3, v10, :cond_0

    .line 1253
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 1254
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_0

    .line 1259
    .end local v3    # "enrollResult":I
    :cond_12
    :try_start_7
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1261
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1262
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 1263
    :catch_5
    move-exception v1

    .line 1264
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1271
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_3
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_13

    .line 1272
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    if-eqz p3, :cond_0

    .line 1275
    const-string/jumbo v10, "hw_auth_token"

    .line 1274
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    goto/16 :goto_0

    .line 1278
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    goto/16 :goto_0

    .line 1283
    :sswitch_4
    if-eqz p3, :cond_14

    .line 1284
    const-string/jumbo v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    .line 1286
    :cond_14
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 1287
    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->getFingerprintScreenLockVerification(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1292
    :sswitch_5
    const-string/jumbo v10, "FpstFingerprintSettings"

    const-string/jumbo v11, "activity. FINGERPRINT_MULTI_SELECT"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    if-nez p2, :cond_0

    .line 1294
    if-eqz p3, :cond_0

    .line 1295
    const-string/jumbo v10, "cancelsession"

    const-string/jumbo v11, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1296
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 1297
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_0

    .line 1132
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_5
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1380
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1378
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 477
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 478
    const-string/jumbo v3, "FpstFingerprintSettings"

    const-string/jumbo v4, "=====onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    const-string/jumbo v3, "FpstFingerprintSettings"

    const-string/jumbo v4, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0714

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->finish()V

    .line 484
    return-void

    .line 487
    :cond_0
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFragment:Landroid/app/Fragment;

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 490
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "tokenFromLock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 491
    .local v2, "token":[B
    const-string/jumbo v3, "identifyFingerprint"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    .line 492
    const-string/jumbo v3, "isAfw"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    .line 493
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    .line 495
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    .line 496
    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAfw : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsAfw:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string/jumbo v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v2, :cond_1

    .line 500
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    .line 503
    :cond_1
    if-eqz p1, :cond_2

    .line 504
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 509
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 511
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 512
    const v3, 0x7f080075

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    .line 517
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    .line 521
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 523
    sput-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    .line 524
    sput-object v6, Lcom/android/settings/fingerprint/FingerprintSettings;->mEdit_TextView:Landroid/widget/TextView;

    .line 476
    return-void

    .line 515
    :cond_3
    const v3, 0x7f080074

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1386
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1387
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 1390
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateOptionsMenu(Landroid/view/Menu;)V

    .line 1385
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1316
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 1317
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    if-eqz v1, :cond_0

    .line 1320
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isRunRegister:Z

    .line 1323
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v1, :cond_1

    .line 1324
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    .line 1327
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_3

    .line 1328
    const/4 v0, -0x1

    .line 1329
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_2

    .line 1330
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 1332
    :cond_2
    if-gez v0, :cond_3

    .line 1333
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    .end local v0    # "result":I
    :cond_3
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 969
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    .line 970
    const-string/jumbo v0, "FpstFingerprintSettings"

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

    .line 971
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    .line 968
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1435
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1457
    const/4 v1, 0x0

    return v1

    .line 1438
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1439
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "helphub:appid"

    const-string/jumbo v2, "finger_scanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    .line 1459
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1444
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "fingerprints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_0

    .line 1451
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    goto :goto_0

    .line 1435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 946
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 947
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 952
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104bd

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 954
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_1

    .line 955
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v0    # "current":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 957
    .restart local v0    # "current":Landroid/app/Fragment;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_0

    .line 959
    .end local v0    # "current":Landroid/app/Fragment;
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 960
    const-string/jumbo v1, "FpstFingerprintSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_0

    .line 963
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x3e8

    const/4 v7, 0x0

    .line 1061
    const-string/jumbo v8, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "=====onPreferenceChange : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v4, 0x1

    .line 1064
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1120
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v4

    .line 1067
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1068
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1001da

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v5, p2

    .line 1070
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result v5

    return v5

    :cond_1
    move v5, v7

    .line 1068
    goto :goto_1

    .line 1073
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_0

    .line 1075
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1001db

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1078
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    .line 1079
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v5

    return v5

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    move v6, v7

    .line 1076
    goto :goto_2

    .line 1083
    .end local p2    # "value":Ljava/lang/Object;
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1084
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1085
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1086
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "SAMSUNGACCOUNT value is false "

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1091
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1092
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    .line 1093
    .local v3, "passwordQuality":I
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v8, "passwordQuality : passwordQuality"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1001dc

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v5, p2

    .line 1097
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1098
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintScreenLockDisable()V

    .line 1099
    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_DISABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 1095
    goto :goto_3

    .line 1100
    :cond_8
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1101
    const/16 v5, 0x1000

    if-ne v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v5

    .line 1100
    if-eqz v5, :cond_a

    .line 1102
    :cond_9
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v5

    .line 1100
    if-eqz v5, :cond_a

    .line 1103
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintLock()V

    .line 1104
    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENABLE:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    .line 1105
    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENTRY_UNLOCK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    goto/16 :goto_0

    .line 1107
    :cond_a
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "Launch the FingerprintLockSettings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1109
    .local v2, "mIntent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string/jumbo v5, "fingerprintlockEnable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1112
    const-string/jumbo v5, "hw_auth_token"

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1113
    const-string/jumbo v5, "identifyFingerprint"

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1114
    const/16 v5, 0x3ee

    invoke-direct {p0, v2, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    .line 1115
    return v7

    .line 1118
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v3    # "passwordQuality":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    .line 983
    const-string/jumbo v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "=====onPreferenceTreeClick"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 986
    .local v3, "mIntent":Landroid/content/Intent;
    const/4 v4, 0x1

    .line 988
    .local v4, "ret":Z
    instance-of v5, p2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v5, :cond_0

    move-object v1, p2

    .line 989
    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 990
    .local v1, "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 992
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->renameFingerPrint(ILjava/lang/CharSequence;)V

    .line 993
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 996
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v1    # "fpref":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_0
    const-string/jumbo v5, "key_fingerprint_add"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1003
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->stopFingerprint()V

    .line 1004
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintSettings$8;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    .line 1009
    const-wide/16 v8, 0x1f4

    .line 1004
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1011
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1056
    :goto_0
    return v4

    .line 996
    :cond_1
    const-string/jumbo v5, "change_reset_password"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1015
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "FingerprintSettings_changepassword"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const/16 v5, 0x3ea

    invoke-direct {p0, v3, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    .line 996
    :cond_2
    const-string/jumbo v5, "support_samsung_account"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1022
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v5, :cond_5

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v5

    return v5

    .line 996
    :cond_3
    const-string/jumbo v5, "samsung_pay"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1030
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v5, :cond_7

    .line 1031
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1032
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    .line 1044
    :goto_1
    const/4 v4, 0x0

    .line 1045
    goto :goto_0

    .line 996
    :cond_4
    const-string/jumbo v5, "samsung_pass"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1048
    const-string/jumbo v5, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string/jumbo v5, "biometricType"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_0

    .line 1025
    :cond_5
    iput-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    goto :goto_0

    .line 1034
    :cond_6
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "There is no registered fingerprint"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string/jumbo v5, "samsung_pay"

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    :cond_7
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "There is Registered Fingerprint. Launch the SamsungPay"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    sget-object v5, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    .line 1040
    const-string/jumbo v5, "com.samsung.android.spay"

    const-string/jumbo v6, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "FingerprintSettings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_1

    .line 1054
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 782
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 783
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V

    .line 788
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 814
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 820
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    .line 821
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 822
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 825
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    .line 826
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    .line 829
    :cond_4
    const/4 v0, -0x1

    invoke-direct {p0, v4, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    .line 837
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showHuntipForFingerprintIdentification()V

    .line 839
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 781
    :cond_5
    :goto_2
    return-void

    .line 798
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isFingerprintDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 799
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "Screen lock switch disable!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto :goto_0

    .line 804
    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 806
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto :goto_0

    .line 809
    :cond_8
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 814
    :cond_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 815
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    .line 817
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto/16 :goto_1

    .line 840
    :cond_a
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 976
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 977
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 975
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 555
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 556
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method protected sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V
    .locals 4
    .param p1, "sv"    # Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    .prologue
    .line 1779
    const-string/jumbo v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1780
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1781
    .local v0, "broadcastIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1783
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-getcom-android-settings-fingerprint-FingerprintSettings$SurveySwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1818
    :goto_0
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1820
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1823
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1777
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1785
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    :pswitch_0
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1793
    :pswitch_1
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPLI"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "identifyFingerprint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPLI, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1798
    :pswitch_2
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPSP"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string/jumbo v2, "FpstFingerprintSettings"

    const-string/jumbo v3, "SamsungPay_Link sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPSP, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1803
    :pswitch_3
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "LOSC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string/jumbo v2, "extra"

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getLoggingExtraValue(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1808
    :pswitch_4
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "LOSC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string/jumbo v2, "extra"

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getLoggingExtraValue(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1813
    :pswitch_5
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPLE"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "FingerprintSettingsUnlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1956
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "startDisclaimerFromSamsungAccount"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v5, :cond_1

    .line 1959
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1960
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    .line 1964
    :goto_0
    return v7

    .line 1962
    :cond_0
    const-string/jumbo v5, "support_samsung_account"

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    .line 1965
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1966
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1967
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v5, "com.osp.app.signin"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 1968
    .local v4, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v4

    .line 1970
    .local v3, "returnvalue_sa":I
    if-nez v3, :cond_2

    .line 1971
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1972
    .local v2, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v5, "mypackage"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    const-string/jumbo v5, "OSP_VER"

    const-string/jumbo v6, "OSP_02"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    const-string/jumbo v5, "MODE"

    const-string/jumbo v6, "ADD_ACCOUNT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    const-string/jumbo v5, "Is_From_SA_Verify"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1977
    const/16 v5, 0x66

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    .line 1988
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "returnvalue_sa":I
    .end local v4    # "samsungAccnts":[Landroid/accounts/Account;
    :goto_1
    return v8

    .line 1979
    .restart local v1    # "manager":Landroid/accounts/AccountManager;
    .restart local v3    # "returnvalue_sa":I
    .restart local v4    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings"

    const-string/jumbo v6, "returnvalue_sa is not 0"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1982
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "returnvalue_sa":I
    .end local v4    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1983
    .restart local v0    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v5, "client_id"

    const-string/jumbo v6, "s5d189ajvs"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1984
    const-string/jumbo v5, "client_secret"

    const-string/jumbo v6, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    const-string/jumbo v5, "Is_From_SA_Verify"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1986
    const/16 v5, 0x65

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public startDisclaimerFromWebSignin()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1992
    const-string/jumbo v0, "FpstFingerprintSettings"

    const-string/jumbo v1, "startDisclaimerFromWebSignin"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v0, :cond_1

    .line 1996
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showMobileKeyboardToastMsg()V

    .line 2001
    :goto_0
    return v2

    .line 1999
    :cond_0
    const-string/jumbo v0, "support_web_signin"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    .line 2003
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    .line 2006
    return v3
.end method
