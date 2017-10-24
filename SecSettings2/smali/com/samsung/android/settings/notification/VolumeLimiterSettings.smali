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
.method static synthetic -get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offShowPW:Z

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
    .line 499
    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;-><init>()V

    .line 498
    sput-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    .line 213
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    .line 214
    sget-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 60
    return-void
.end method

.method private setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    return-void
.end method

.method private setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 365
    return-void
.end method

.method private setVolumeLimiter(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "volume_limiter_value"

    const/16 v3, 0xf

    .line 175
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, "limiterValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 178
    const-string/jumbo v3, "volumelimit_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 177
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
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

    .line 180
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

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    .line 174
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 369
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 378
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 380
    .local v1, "length":I
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v7, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v6, v7, :cond_3

    .line 381
    if-ge v1, v8, :cond_1

    .line 382
    new-array v4, v4, [Ljava/lang/Object;

    .line 383
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 382
    const v6, 0x7f0b113b

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    .line 402
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iget v4, v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->buttonText:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextText(I)V

    .line 377
    return-void

    .line 387
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 389
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-ge v4, v6, :cond_0

    .line 391
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0b089f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 395
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    .line 399
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iget v7, v7, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 400
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

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 316
    new-array v0, v3, [Ljava/lang/Object;

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 316
    const v1, 0x7f0b113b

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-lt v0, v1, :cond_1

    .line 320
    new-array v0, v3, [Ljava/lang/Object;

    .line 321
    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 320
    const v1, 0x7f0b113e

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public handleNext()V
    .locals 6

    .prologue
    .line 329
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "mChosenPassword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v3, v4, :cond_4

    .line 335
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-ne v3, v4, :cond_2

    .line 337
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    sget-object v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 356
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 357
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 327
    :cond_3
    return-void

    .line 341
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v3, v4, :cond_2

    .line 342
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 344
    const-string/jumbo v4, "volumelimit_secure_password"

    .line 343
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 346
    const-string/jumbo v4, "volumelimit_set_password"

    const/4 v5, 0x1

    .line 345
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 349
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 350
    .local v2, "tmp":Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    move-object v3, v2

    .line 351
    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 353
    :cond_6
    sget-object v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 119
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 120
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 121
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 122
    const-string/jumbo v4, "volumelimit_on"

    .line 121
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    const v1, 0x7f08013e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->addPreferencesFromResource(I)V

    .line 88
    const-string/jumbo v1, "maximum_volume"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    .line 89
    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    .line 90
    .local v0, "mCheckPasswordCallback":Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setCallback(Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;)V

    .line 91
    const-string/jumbo v1, "use_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    const-string/jumbo v5, "volumelimit_on"

    .line 108
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 111
    const-string/jumbo v5, "volumelimit_set_password"

    .line 110
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    return-void

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0

    :cond_1
    move v2, v3

    .line 110
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->releaseMediaPlayer()V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->prepareMediaPlayer()V

    .line 127
    return-void

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    const-string/jumbo v4, "volumelimit_on"

    .line 132
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 135
    const-string/jumbo v4, "volumelimit_set_password"

    .line 134
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    goto :goto_1

    :cond_2
    move v1, v2

    .line 134
    goto :goto_2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    const v3, 0x7f10011c

    .line 161
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 162
    if-eqz p2, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 164
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    const-string/jumbo v2, "volumelimit_set_password"

    .line 164
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    .line 168
    return-void

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setVolumeLimiter(Z)V

    .line 156
    return-void
.end method

.method public showSetPasswordDialog()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 221
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04006d

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 223
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f1101ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 224
    .local v0, "mCancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$3;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v4, 0x7f1101ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    .line 231
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v4, 0x7f1101ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 238
    .local v2, "mKeyboardView":Lcom/android/internal/widget/PasswordEntryKeyboardView;
    const v4, 0x7f1101aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 239
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 251
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-array v5, v8, [Landroid/text/InputFilter;

    .line 270
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    iget v7, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 269
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 273
    new-instance v1, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 274
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    .line 273
    invoke-direct {v1, v4, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    .line 275
    .local v1, "mKeyboardHelper":Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    invoke-virtual {v1, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 277
    const v4, 0x7f1101a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    .line 278
    invoke-virtual {v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 280
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 282
    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    .line 284
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    const v5, 0x7f0b1431

    .line 284
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 287
    new-instance v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    .line 284
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    .line 298
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 299
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 220
    return-void
.end method

.method protected updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V
    .locals 1
    .param p1, "stage"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 305
    .local v0, "previousStage":Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateUi()V

    .line 303
    return-void
.end method
