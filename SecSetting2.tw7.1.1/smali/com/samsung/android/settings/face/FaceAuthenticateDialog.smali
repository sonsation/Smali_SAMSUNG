.class public Lcom/samsung/android/settings/face/FaceAuthenticateDialog;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;,
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;,
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;,
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I


# instance fields
.field private final alphaAnimationDuration:I

.field private mAlert:Landroid/app/AlertDialog;

.field private mAltPassword:Landroid/widget/EditText;

.field private mAltPasswordBox:Landroid/widget/LinearLayout;

.field private mAltPasswordEditBox:Landroid/widget/FrameLayout;

.field private mAltPasswordError:Landroid/widget/TextView;

.field private mAltPasswordGuide:Landroid/widget/TextView;

.field private mAnimationBox:Landroid/widget/RelativeLayout;

.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mBackButtonContainer:Landroid/widget/LinearLayout;

.field private mBackupButton:Landroid/widget/Button;

.field private mBackupCancelButton:Landroid/widget/Button;

.field private mBackupOkButton:Landroid/widget/Button;

.field private mBackupPasswordStatusDB:I

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field protected mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDialogLogoIconView:Landroid/widget/ImageView;

.field private mDialogTitleTextView:Landroid/widget/TextView;

.field private mDialogView:Landroid/view/View;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mErrClearRunnable:Ljava/lang/Runnable;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mHandler:Landroid/os/Handler;

.field private mInfoBox:Landroid/widget/RelativeLayout;

.field private mInfoImage:Landroid/widget/ImageView;

.field private mInfoText:Landroid/widget/TextView;

.field private mPasswordTextRunnable:Ljava/lang/Runnable;

.field mResultValue:I

.field private mSIPRunnable:Ljava/lang/Runnable;

.field private mTimeoutTitle:Landroid/widget/TextView;

.field private mTitleArea:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onFaceAuthenticateDialogEventListener:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->values()[Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_NORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_TIME_OUT:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanUpLayoutResourcesBackup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanUpLayoutResources()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->dismiss()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "remainingTime"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->releaseFaceManager()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateBackupLayout()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V
    .locals 0
    .param p1, "stage"    # Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
    .param p2, "errorStatus"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->verifyPassword()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onIFaceAuthenticateDialogEventListener"    # Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    .line 92
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->alphaAnimationDuration:I

    .line 102
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 106
    iput v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    .line 140
    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->onFaceAuthenticateDialogEventListener:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;

    .line 128
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->initFailedFaceAttempts(Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 130
    iput v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    .line 132
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "biometrics_backup_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupPasswordStatusDB:I

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showFaceAuthenticationDialog()V

    .line 125
    return-void
.end method

.method private checkBackupValue(Ljava/lang/String;)Z
    .locals 4
    .param p1, "backupValue"    # Ljava/lang/String;

    .prologue
    .line 532
    const/4 v1, 0x0

    .line 534
    .local v1, "ret":Z
    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 538
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 535
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private cleanEditBoxListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 912
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 909
    :cond_0
    return-void
.end method

.method private declared-synchronized cleanUpLayoutResources()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 879
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    .line 882
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 878
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cleanUpLayoutResourcesBackup()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 889
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    .line 890
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 891
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 892
    if-eqz v0, :cond_0

    .line 893
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 895
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanEditBoxListener()V

    .line 896
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    .line 898
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    .line 900
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_3

    .line 904
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 888
    return-void

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 873
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->releaseFaceManager()V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->onFaceAuthenticateDialogEventListener:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;->FaceAuthenticateDialogEvent(I)V

    .line 870
    return-void
.end method

.method private getDialogBuiler(I)Landroid/app/AlertDialog$Builder;
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const v6, 0x7f0b13e7

    const v5, 0x10302d2

    const/4 v4, 0x1

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 552
    .local v1, "inflater":Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    .line 634
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v0

    .line 554
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v2, 0x7f040102

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    .line 555
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 557
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$11;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 563
    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    .line 557
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 579
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    .line 557
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 582
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    const v2, 0x7f040100

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    .line 583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$13;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 599
    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$14;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    const v4, 0x7f0b08df

    .line 587
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 612
    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$15;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$15;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    .line 587
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 628
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    .line 587
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleLockoutFace(IJ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "remainingTime"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 638
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 639
    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 647
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 649
    :cond_0
    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "CountdownTimer: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;JJI)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 637
    return-void

    .line 642
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    goto :goto_0
.end method

.method private releaseFaceManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 865
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 867
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 862
    return-void
.end method

.method private setEditBoxListener()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 455
    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 424
    :cond_0
    return-void
.end method

.method private setLayoutMarginParams(IIIILandroid/view/View;)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "view"    # Landroid/view/View;

    .prologue
    .line 845
    if-nez p5, :cond_0

    .line 846
    const-string/jumbo v5, "FcstFaceAuthenticateDialog"

    const-string/jumbo v6, "setLayoutMaringParams view is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void

    .line 849
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 851
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v1

    .line 852
    .local v1, "mLeft":I
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p2, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v3

    .line 853
    .local v3, "mTop":I
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p3, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v2

    .line 854
    .local v2, "mRight":I
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p4, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v0

    .line 856
    .local v0, "mBottom":I
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 857
    invoke-virtual {p5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    return-void
.end method

.method private setPasswordLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setEditBoxListener()V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b08d8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    :cond_5
    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    :cond_6
    return-void
.end method

.method private showBackupDialog()Z
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 326
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->getDialogBuiler(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-nez v0, :cond_0

    .line 328
    const-string/jumbo v3, "FcstFaceAuthenticateDialog"

    const-string/jumbo v4, "showBackupDialog : failed to get builder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v5

    .line 333
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    .line 335
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f11039d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    .line 337
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f1103a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    .line 338
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f11039e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    .line 339
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f1103a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    .line 340
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f11039f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 344
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 345
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 346
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const v4, 0x7f0b08d4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 347
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 348
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 349
    .local v2, "mOkButton":Landroid/widget/Button;
    if-eqz v2, :cond_2

    .line 350
    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$4;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 366
    .end local v2    # "mOkButton":Landroid/widget/Button;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FcstFaceAuthenticateDialog"

    const-string/jumbo v4, "showBackupDialog : failed to show dialog"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    return v5
.end method

.method private showDialog(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 220
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 223
    :cond_0
    if-ne p1, v4, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showIdentifyDialog()Z

    .line 225
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v0

    .line 226
    .local v0, "remainTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 227
    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    .line 228
    return-void

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->startFaceAuthentication()V

    .line 219
    .end local v0    # "remainTime":J
    :cond_2
    :goto_0
    return-void

    .line 231
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showBackupDialog()Z

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateBackupLayout()V

    goto :goto_0
.end method

.method private showFaceAuthenticationDialog()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 212
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFailedFaceAttempts()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 213
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showDialog(I)V

    .line 209
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showDialog(I)V

    goto :goto_0
.end method

.method private showIdentifyDialog()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->getDialogBuiler(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-nez v0, :cond_0

    .line 241
    const-string/jumbo v1, "FcstFaceAuthenticateDialog"

    const-string/jumbo v2, "showIdentifyDialog : failed to get builder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v4

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    .line 263
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f1103a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupPasswordStatusDB:I

    if-nez v1, :cond_6

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$2;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 308
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const v2, 0x7f0b08d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 315
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 316
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    :cond_5
    return v5

    .line 283
    :cond_6
    iget v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupPasswordStatusDB:I

    if-ne v1, v5, :cond_2

    .line 284
    const-string/jumbo v1, "JPN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 287
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private startFaceAuthentication()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    .line 541
    :goto_0
    return-void

    .line 545
    :cond_0
    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "mFaceManager in null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBackupLayout()V
    .locals 4

    .prologue
    .line 373
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v0

    .line 374
    .local v0, "remainTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 375
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    .line 372
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setPasswordLayout()V

    goto :goto_0
.end method

.method private updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V
    .locals 15
    .param p1, "stage"    # Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
    .param p2, "errorStatus"    # I

    .prologue
    .line 714
    const-string/jumbo v1, "FcstFaceAuthenticateDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStage : stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-getcom-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues()[I

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 717
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 721
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 724
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    .line 726
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 727
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    .line 729
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    .line 730
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    .line 732
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 733
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const v2, 0x7f0b08d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 735
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 736
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8

    .line 740
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    .line 741
    .local v11, "neutralButton":Landroid/widget/Button;
    const v1, 0x7f0b13e7

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setText(I)V

    .line 743
    .end local v11    # "neutralButton":Landroid/widget/Button;
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->startFaceAuthentication()V

    goto :goto_0

    .line 747
    :pswitch_1
    const/4 v8, 0x0

    .line 748
    .local v8, "errTitle":Ljava/lang/String;
    const/4 v7, 0x0

    .line 749
    .local v7, "errInfo":Ljava/lang/String;
    const/16 v1, 0x3ec

    move/from16 v0, p2

    if-ne v0, v1, :cond_12

    .line 750
    const v14, 0x7f0b08e4

    .line 751
    .local v14, "titleId":I
    const v9, 0x7f0b08e3

    .line 752
    .local v9, "errorInfoId":I
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 753
    .local v8, "errTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 760
    .end local v7    # "errInfo":Ljava/lang/String;
    .end local v8    # "errTitle":Ljava/lang/String;
    .end local v9    # "errorInfoId":I
    .end local v14    # "titleId":I
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_a

    .line 761
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 763
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_b

    .line 764
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    const/16 v2, 0x18

    const/16 v3, 0x12

    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    .line 766
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 767
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    .line 768
    if-eqz p2, :cond_c

    .line 769
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_d

    .line 773
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    .line 775
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 776
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 779
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 782
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    if-eqz p2, :cond_13

    .line 784
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 789
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 790
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 793
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 795
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    .line 797
    .restart local v11    # "neutralButton":Landroid/widget/Button;
    const v1, 0x7f0b08df

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 754
    .end local v11    # "neutralButton":Landroid/widget/Button;
    .restart local v7    # "errInfo":Ljava/lang/String;
    .local v8, "errTitle":Ljava/lang/String;
    :cond_12
    if-eqz p2, :cond_9

    .line 755
    const v14, 0x7f0b08db

    .line 756
    .restart local v14    # "titleId":I
    const v9, 0x7f0b08e0

    .line 757
    .restart local v9    # "errorInfoId":I
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, "errTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "errInfo":Ljava/lang/String;
    goto/16 :goto_1

    .line 786
    .end local v7    # "errInfo":Ljava/lang/String;
    .end local v8    # "errTitle":Ljava/lang/String;
    .end local v9    # "errorInfoId":I
    .end local v14    # "titleId":I
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 801
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 802
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_15

    .line 803
    if-eqz v10, :cond_14

    .line 804
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 806
    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanEditBoxListener()V

    .line 808
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 809
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const v2, 0x7f0b08db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 810
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    .line 811
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    .line 812
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_16

    .line 813
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 814
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    const v2, 0x7f0b08df

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 817
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 822
    .end local v10    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_17

    .line 823
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_18

    .line 826
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 828
    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 830
    .local v13, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 831
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v12

    .line 832
    .local v12, "padding":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v13, v12, v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 833
    const/4 v1, -0x1

    iput v1, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 834
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private verifyPassword()V
    .locals 8

    .prologue
    .line 477
    const-string/jumbo v0, ""

    .line 478
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 482
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->checkBackupValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->resetFailedFaceNBackupAttempts()V

    .line 484
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    .line 499
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    :goto_0
    return-void

    .line 501
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->reportFailedFaceAttempts()V

    .line 502
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v2

    .line 503
    .local v2, "remainTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 504
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    goto :goto_0

    .line 510
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b08dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 515
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    :cond_6
    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$10;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    .line 526
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public forcedDismiss()V
    .locals 2

    .prologue
    .line 926
    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "forcedDismiss : Dismiss by external request."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    .line 928
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->dismiss()V

    .line 925
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    const/4 v0, 0x1

    return v0

    .line 921
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
