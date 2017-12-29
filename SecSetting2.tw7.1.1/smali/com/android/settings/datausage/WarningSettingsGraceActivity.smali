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
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 61
    const-string/jumbo v0, "warning_progress"

    sput-object v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "warning_progress_width"

    sput-object v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    .line 312
    new-instance v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 55
    return-void
.end method

.method private updatePolicy()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 308
    const/16 v0, 0x25

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 186
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 187
    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget-boolean v2, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 189
    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, "view":Landroid/view/View;
    const v11, 0x7f080151

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p1, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 88
    .local v7, "view":Landroid/view/View;
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    .line 89
    const v11, 0x7f110642

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    .line 90
    const v11, 0x7f1109ed

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    .line 91
    const v11, 0x7f1109ef

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    .line 92
    const v11, 0x7f1109ee

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    .line 93
    const v11, 0x7f1109f0

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0365

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sput v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mPadding:I

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0114

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "warningButtonText":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 98
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 101
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x7

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 105
    .local v6, "sharedpre":Landroid/content/SharedPreferences;
    if-nez v6, :cond_2

    .line 106
    return-object v7

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0115

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "warningButtonValue":[Ljava/lang/String;
    const-string/jumbo v10, "off"

    .line 110
    .local v10, "warningValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 111
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

    const/4 v13, 0x0

    .line 110
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 112
    if-eqz v10, :cond_3

    const-string/jumbo v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 114
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

    .line 115
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

    .line 120
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

    .line 121
    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    if-nez v11, :cond_5

    .line 123
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

    .line 129
    :cond_5
    :goto_1
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 130
    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 131
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 132
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_6

    .line 133
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 134
    :cond_6
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 135
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    :cond_7
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    .line 137
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    :cond_8
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_9

    .line 139
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    :cond_9
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    .line 141
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
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

    .line 155
    const/4 v4, 0x0

    .line 156
    .local v4, "mTotal":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 157
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

    .line 158
    .local v4, "mTotal":Ljava/lang/String;
    const-string/jumbo v11, "max"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 160
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 161
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

    const/4 v13, 0x0

    .line 160
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 166
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

    .line 167
    .local v1, "dataUsagePercent":F
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v11, "0.00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v12, v1

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "dataStr":Ljava/lang/String;
    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    add-int/lit8 v5, v11, 0x28

    .line 170
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

    .line 171
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00f7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00f7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0b05b6

    invoke-virtual {p0, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_c

    .line 177
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;)V

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 179
    :cond_c
    return-object v7

    .line 116
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v1    # "dataUsagePercent":F
    .end local v2    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v4    # "mTotal":Ljava/lang/String;
    .end local v5    # "percent":I
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "off"

    goto/16 :goto_0

    .line 124
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 125
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    goto/16 :goto_1

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_e

    .line 144
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 145
    :cond_e
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    .line 146
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    :cond_f
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_10

    .line 148
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    :cond_10
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v11, :cond_11

    .line 150
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    :cond_11
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    .line 152
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 162
    .restart local v4    # "mTotal":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 163
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "max"

    goto/16 :goto_3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroyView()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 246
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DataWarning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DataWarning"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    .line 231
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 194
    const-string/jumbo v3, "off"

    .line 195
    .local v3, "warningValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f04ca

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 196
    .local v2, "screenId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f04cc

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 197
    .local v1, "eventId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz p2, :cond_5

    move v4, v5

    :goto_0
    invoke-static {v7, v2, v1, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    .line 198
    if-eqz p2, :cond_6

    .line 199
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_0

    .line 200
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 201
    :cond_0
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    :cond_1
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    :cond_2
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 206
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    :cond_3
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 208
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_warning_set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data_warning_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    invoke-direct {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->updatePolicy()V

    .line 193
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    move v4, v6

    .line 197
    goto/16 :goto_0

    .line 211
    :cond_6
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_7

    .line 212
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 213
    :cond_7
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 214
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 215
    :cond_8
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 216
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    :cond_9
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 218
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    :cond_a
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 220
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    :cond_b
    const-string/jumbo v3, "off"

    goto :goto_1
.end method
