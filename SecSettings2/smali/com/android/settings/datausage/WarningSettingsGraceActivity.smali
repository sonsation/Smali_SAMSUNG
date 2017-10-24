.class public Lcom/android/settings/datausage/WarningSettingsGraceActivity;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "WarningSettingsGraceActivity.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;,
        Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;
    }
.end annotation


# static fields
.field public static KEY_WARNING_PROGRESS:Ljava/lang/String;

.field public static KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

.field private static mPadding:I

.field private static mScreenWidth:I

.field public static sIsEnable:Z


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEndPercent:Landroid/widget/TextView;

.field private mProgress:I

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mStartPercent:Landroid/widget/TextView;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mediumText:Landroid/widget/TextView;

.field private mediumTextBlow:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->updatePolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 58
    const-string/jumbo v0, "warning_progress"

    sput-object v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "warning_progress_width"

    sput-object v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    .line 300
    new-instance v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 53
    return-void
.end method

.method private updatePolicy()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 296
    const/16 v0, 0x25

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 181
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 182
    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget-boolean v2, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 184
    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const/4 v7, 0x0

    .line 83
    .local v7, "view":Landroid/view/View;
    const v11, 0x7f080145

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p1, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 85
    .local v7, "view":Landroid/view/View;
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    .line 86
    const v11, 0x7f110548

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    .line 87
    const v11, 0x7f110894

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    .line 88
    const v11, 0x7f110896

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    .line 89
    const v11, 0x7f110895

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    .line 90
    const v11, 0x7f110897

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02f9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sput v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mPadding:I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c010e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "warningButtonText":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 95
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 98
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x7

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 102
    .local v6, "sharedpre":Landroid/content/SharedPreferences;
    if-nez v6, :cond_2

    .line 103
    return-object v7

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c010f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "warningButtonValue":[Ljava/lang/String;
    const-string/jumbo v10, "off"

    .line 107
    .local v10, "warningValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data_warning_set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    if-eqz v10, :cond_3

    const-string/jumbo v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 110
    :cond_3
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data_warning_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "off"

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data_warning_set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_4
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    .line 117
    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    if-nez v11, :cond_5

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_5
    :goto_1
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 126
    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 127
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 128
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_6

    .line 129
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 130
    :cond_6
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 131
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    :cond_7
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    .line 133
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    :cond_8
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_9

    .line 135
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    :cond_9
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    .line 137
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    :cond_a
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mScreenWidth:I

    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, "mTotal":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 153
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "max"

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "mTotal":Ljava/lang/String;
    const-string/jumbo v11, "max"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 156
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set_data_limit"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 161
    :cond_b
    :goto_3
    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    int-to-float v11, v11

    const/high16 v12, 0x42200000    # 40.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    mul-float v1, v11, v12

    .line 162
    .local v1, "dataUsagePercent":F
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v11, "0.00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v12, v1

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "dataStr":Ljava/lang/String;
    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    add-int/lit8 v5, v11, 0x28

    .line 165
    .local v5, "percent":I
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00eb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00eb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0b04bd

    invoke-virtual {p0, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_c

    .line 172
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;)V

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 174
    :cond_c
    return-object v7

    .line 112
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v1    # "dataUsagePercent":F
    .end local v2    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v4    # "mTotal":Ljava/lang/String;
    .end local v5    # "percent":I
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "off"

    goto/16 :goto_0

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 121
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    goto/16 :goto_1

    .line 139
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_e

    .line 140
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 141
    :cond_e
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    .line 142
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    :cond_f
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_10

    .line 144
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    :cond_10
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v11, :cond_11

    .line 146
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    :cond_11
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    .line 148
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 157
    .restart local v4    # "mTotal":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "max"

    goto/16 :goto_3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroyView()V

    .line 240
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 238
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DataWarning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DataWarning"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    const-string/jumbo v1, "off"

    .line 191
    .local v1, "warningValue":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    invoke-direct {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->updatePolicy()V

    .line 188
    return-void

    .line 204
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_6

    .line 205
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 206
    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 207
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    :cond_7
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 209
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    :cond_8
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 211
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    :cond_9
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 213
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    :cond_a
    const-string/jumbo v1, "off"

    goto :goto_0
.end method
