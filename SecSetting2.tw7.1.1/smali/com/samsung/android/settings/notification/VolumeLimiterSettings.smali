.class public Lcom/samsung/android/settings/notification/VolumeLimiterSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;,
        Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;,
        Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

.field private mUsePassword:Landroid/preference/SwitchPreference;

.field private offMstarState:Z

.field private offShowPW:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offShowPW:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offShowPW:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 535
    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;-><init>()V

    .line 534
    sput-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    .line 228
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    .line 229
    sget-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 62
    return-void
.end method

.method private setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    return-void
.end method

.method private setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 389
    return-void
.end method

.method private setVolumeLimiter(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 191
    const-string/jumbo v2, "volume_limiter_value"

    const/16 v3, 0x9

    .line 190
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, "limiterValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 193
    const-string/jumbo v3, "volumelimit_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 192
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;volumelimit_on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;volumelimit_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    .line 189
    return-void

    .line 193
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 393
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 402
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 404
    .local v1, "length":I
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v7, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v6, v7, :cond_3

    .line 405
    if-ge v1, v8, :cond_1

    .line 406
    new-array v4, v4, [Ljava/lang/Object;

    .line 407
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 406
    const v6, 0x7f0b14a9

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    .line 426
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iget v4, v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->buttonText:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextText(I)V

    .line 401
    return-void

    .line 411
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 413
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-ge v4, v6, :cond_0

    .line 415
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0b0a44

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 419
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    .line 423
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iget v7, v7, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 424
    if-lez v1, :cond_4

    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 336
    new-array v0, v3, [Ljava/lang/Object;

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 336
    const v1, 0x7f0b14a9

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-lt v0, v1, :cond_1

    .line 340
    new-array v0, v3, [Ljava/lang/Object;

    .line 341
    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 340
    const v1, 0x7f0b14ac

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "mChosenPassword":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    return-void

    .line 350
    .end local v2    # "mChosenPassword":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 351
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 357
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "mChosenPassword":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 358
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v4, v5, :cond_6

    .line 359
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-ne v4, v5, :cond_4

    .line 361
    :cond_3
    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    .line 362
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 380
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 381
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 347
    :cond_5
    return-void

    .line 365
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v4, v5, :cond_4

    .line 366
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 368
    const-string/jumbo v5, "volumelimit_secure_password"

    .line 367
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 370
    const-string/jumbo v5, "volumelimit_set_password"

    const/4 v6, 0x1

    .line 369
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 373
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 374
    .local v3, "tmp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_8

    move-object v4, v3

    .line 375
    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 377
    :cond_8
    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 125
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 126
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 127
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 128
    const-string/jumbo v5, "volumelimit_on"

    .line 127
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string/jumbo v2, "notificationDialogShown"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 132
    .local v1, "isNotificationDialogShown":Z
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "volumelimit_set_password"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    .line 121
    .end local v1    # "isNotificationDialogShown":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 127
    goto :goto_0

    .line 136
    .restart local v1    # "isNotificationDialogShown":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    const v1, 0x7f08014a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->addPreferencesFromResource(I)V

    .line 94
    const-string/jumbo v1, "maximum_volume"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    .line 95
    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    .line 96
    .local v0, "mCheckPasswordCallback":Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setCallback(Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;)V

    .line 97
    const-string/jumbo v1, "use_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    const-string/jumbo v5, "volumelimit_on"

    .line 114
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 117
    const-string/jumbo v5, "volumelimit_set_password"

    .line 116
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 85
    return-void

    :cond_0
    move v1, v3

    .line 114
    goto :goto_0

    :cond_1
    move v2, v3

    .line 116
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->releaseMediaPlayer()V

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->prepareMediaPlayer()V

    .line 142
    return-void

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    const-string/jumbo v4, "volumelimit_on"

    .line 147
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 150
    const-string/jumbo v4, "volumelimit_set_password"

    .line 149
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 147
    goto :goto_1

    :cond_2
    move v1, v2

    .line 149
    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 529
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v0, "notificationDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    const v3, 0x7f0f013f

    .line 176
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 177
    if-eqz p2, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 176
    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 179
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    const-string/jumbo v2, "volumelimit_set_password"

    .line 179
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    .line 183
    return-void

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setVolumeLimiter(Z)V

    .line 171
    return-void
.end method

.method public showSetPasswordDialog()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0200c2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 236
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040073

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 238
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1101c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 239
    .local v1, "mCancelButton":Landroid/widget/Button;
    new-instance v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$3;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v5, 0x7f1101c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    .line 246
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_button_background"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 254
    .local v0, "isEnabledShowBtnBg":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 256
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 258
    :cond_1
    const v5, 0x7f1101c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 259
    .local v3, "mKeyboardView":Lcom/android/internal/widget/PasswordEntryKeyboardView;
    const v5, 0x7f1101c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 260
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 272
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-array v6, v10, [Landroid/text/InputFilter;

    .line 291
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    iget v8, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v9

    .line 290
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 294
    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 295
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 294
    invoke-direct {v2, v5, v3, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    .line 296
    .local v2, "mKeyboardHelper":Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    invoke-virtual {v2, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 298
    const v5, 0x7f1101bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 301
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 303
    sget-object v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 305
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    const v6, 0x7f0b17df

    .line 305
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 308
    new-instance v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    .line 305
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    .line 319
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 320
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 235
    return-void

    .line 253
    .end local v0    # "isEnabledShowBtnBg":Z
    .end local v2    # "mKeyboardHelper":Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    .end local v3    # "mKeyboardView":Lcom/android/internal/widget/PasswordEntryKeyboardView;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnabledShowBtnBg":Z
    goto/16 :goto_0
.end method

.method protected updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V
    .locals 1
    .param p1, "stage"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 325
    .local v0, "previousStage":Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateUi()V

    .line 323
    return-void
.end method
