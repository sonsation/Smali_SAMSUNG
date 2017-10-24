.class public Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PowerSavingValueFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;,
        Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;
    }
.end annotation


# instance fields
.field private delta:I

.field private mAD:Landroid/app/AlertDialog;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentInCircleTv:Landroid/widget/TextView;

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBottomDescriptionTv:Landroid/widget/TextView;

.field private mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

.field private mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFromWhere:Ljava/lang/String;

.field private mPowerSavingMode:I

.field private mPreviousAodMode:I

.field private mPreviousBrightnessStatus:I

.field private mPreviousDataRestriction:I

.field private mPreviousNetworkRestriction:I

.field private mPreviousPerformance:I

.field private mPreviousPowerSavingMode:I

.field private mPreviousScreenStatus:I

.field private mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetButton:Landroid/widget/TextView;

.field private mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mResetTitle:Landroid/widget/TextView;

.field private mRestrictBackData:Landroid/preference/SwitchPreference;

.field private mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mTopDescriptionTv:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->cancelPsmEditValue()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->enableResetButton(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->resetEditValue()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateBatteryStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    .line 138
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    .line 907
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 130
    return-void
.end method

.method private cancelPsmEditValue()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 832
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    .line 834
    .local v0, "curValue":I
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    if-eq v0, v1, :cond_0

    .line 835
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    .line 836
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 837
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "screen_resolution_state"

    .line 838
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    .line 837
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 842
    .end local v0    # "curValue":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    .line 844
    .restart local v0    # "curValue":I
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x5

    if-eq v0, v1, :cond_1

    .line 845
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 846
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v4, v4, -0x50

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 847
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "limit_brightness_state"

    .line 848
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    .line 847
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 852
    .end local v0    # "curValue":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 853
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 854
    .restart local v0    # "curValue":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-eq v0, v1, :cond_2

    .line 855
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 856
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "restricted_device_performance"

    .line 857
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    .line 856
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 861
    .end local v0    # "curValue":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 862
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    .line 863
    .restart local v0    # "curValue":I
    :goto_2
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-eq v0, v1, :cond_3

    .line 864
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-eq v1, v2, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 865
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v2, :cond_a

    .line 866
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "low_power_back_data_off"

    .line 867
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 866
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    .end local v0    # "curValue":I
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 877
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 878
    .restart local v0    # "curValue":I
    :goto_5
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-eq v0, v1, :cond_4

    .line 879
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 880
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "psm_network_power_saving"

    .line 881
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 880
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 885
    .end local v0    # "curValue":I
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 886
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    .line 887
    .restart local v0    # "curValue":I
    :goto_7
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-eq v0, v1, :cond_5

    .line 888
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-eq v4, v2, :cond_e

    :goto_8
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 889
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "psm_always_on_display_mode"

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    invoke-static {v1, v2, v7, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 831
    .end local v0    # "curValue":I
    :cond_5
    return-void

    .line 853
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "curValue":I
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 855
    goto/16 :goto_1

    .line 862
    .end local v0    # "curValue":I
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "curValue":I
    goto :goto_2

    :cond_9
    move v1, v3

    .line 864
    goto :goto_3

    .line 869
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "ultra_power_mode_back_data_off"

    .line 870
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 869
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 877
    .end local v0    # "curValue":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "curValue":I
    goto :goto_5

    :cond_c
    move v1, v3

    .line 879
    goto :goto_6

    .line 886
    .end local v0    # "curValue":I
    :cond_d
    const/4 v0, 0x1

    .restart local v0    # "curValue":I
    goto :goto_7

    :cond_e
    move v2, v3

    .line 888
    goto :goto_8
.end method

.method private combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resolution"    # Ljava/lang/String;
    .param p2, "px"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 299
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 300
    .local v0, "result":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0589

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 300
    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 300
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 305
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0588

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 305
    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 308
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 305
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 310
    return-object v0
.end method

.method private enableResetButton(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 653
    return-void
.end method

.method private initPreference()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 314
    const-string/jumbo v1, "PowerSavingValueFragment"

    const-string/jumbo v4, "PSM initPreference"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "restricted_device_performance"

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v4, v8, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    .line 317
    const-string/jumbo v1, "psm_restricted_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    .line 318
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    .line 319
    .local v0, "formatter":Landroid/icu/text/NumberFormat;
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    new-array v5, v2, [Ljava/lang/Object;

    .line 320
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x46

    :goto_0
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    .line 319
    const v1, 0x7f0b0ab4

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$5;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    const-string/jumbo v1, "psm_restricted_bgdata"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    .line 339
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 340
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 361
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v2, :cond_3

    .line 362
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 363
    const-string/jumbo v4, "low_power_back_data_off"

    .line 362
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 369
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 374
    :goto_4
    const-string/jumbo v1, "psm_restricted_network"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    .line 375
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 376
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 391
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "psm_network_power_saving"

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v4, v8, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    .line 392
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 398
    :goto_6
    const-string/jumbo v1, "psm_aod_disable"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    .line 399
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 400
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "psm_always_on_display_mode"

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v4, v8, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 417
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-ne v4, v2, :cond_8

    :goto_7
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 418
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v8, :cond_0

    .line 419
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0abc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    :goto_8
    return-void

    .line 320
    :cond_1
    const/16 v1, 0x3c

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 321
    goto/16 :goto_1

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 367
    const-string/jumbo v4, "ultra_power_mode_back_data_off"

    .line 366
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 369
    goto/16 :goto_3

    .line 371
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 392
    goto :goto_5

    .line 394
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    :cond_8
    move v3, v2

    .line 417
    goto :goto_7

    .line 422
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8
.end method

.method private onBrightnessSetText(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 532
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    mul-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x50

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    add-int/lit8 v4, p1, 0x7

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v3

    .line 537
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v4

    .line 536
    sub-int v1, v3, v4

    .line 538
    .local v1, "mediumTime":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "timeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 550
    :pswitch_0
    mul-int/lit8 v3, p1, 0x5

    add-int/lit8 v3, v3, 0x50

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "brightnessTopText":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 556
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 557
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 531
    .end local v0    # "brightnessTopText":Ljava/lang/String;
    :goto_0
    return-void

    .line 541
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 542
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    goto :goto_0

    .line 545
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 546
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onScreenResolutionSetText(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 563
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    add-int/lit8 v3, p1, 0xc

    invoke-static {v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v2

    .line 564
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v3

    .line 563
    sub-int v0, v2, v3

    .line 565
    .local v0, "screenMediumTime":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "screenTimeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 571
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 572
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 562
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private registerBatteryStatusReceiver()V
    .locals 3

    .prologue
    .line 579
    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 594
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, "batteryLevelFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    return-void
.end method

.method private resetEditValue()V
    .locals 7

    .prologue
    const/16 v6, 0x50

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 773
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v0, v3, :cond_6

    .line 774
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 776
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_1

    .line 780
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    .line 781
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 782
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_resolution_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restricted_device_performance"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_back_data_off"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 793
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 794
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_network_power_saving"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 796
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 798
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_always_on_display_mode"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 772
    :cond_5
    :goto_0
    return-void

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_7

    .line 803
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 805
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 807
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_8

    .line 808
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    .line 809
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 810
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_resolution_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 812
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_9

    .line 813
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 814
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restricted_device_performance"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 816
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_a

    .line 817
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 818
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_power_mode_back_data_off"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_b

    .line 821
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 822
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_network_power_saving"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 824
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 825
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 826
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_always_on_display_mode"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_0
.end method

.method private setBatteryHeaderViewsVisibility()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 615
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cancelAnimations()V

    .line 616
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-virtual {v3, v4, v7, v7}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 618
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 619
    .local v0, "fadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 620
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 622
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 623
    .local v1, "fixNowFadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 624
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 626
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 627
    .local v2, "fixNowFadeOut":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 628
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 630
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 634
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 635
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 614
    return-void
.end method

.method private setBatteryStatus()V
    .locals 5

    .prologue
    .line 607
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 608
    .local v0, "time":I
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "timeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0aa3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    .line 606
    return-void
.end method

.method private setEstimatedTimeTextSize(I)V
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 895
    new-instance v1, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    .line 896
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0523

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 895
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;-><init>(Landroid/widget/TextView;I)V

    .line 898
    .local v1, "watcher":Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    .line 899
    const v3, 0x7f0a0200

    .line 900
    const v4, 0x7f0a0201

    .line 901
    const/4 v5, -0x1

    .line 898
    invoke-static {v2, p1, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v0

    .line 902
    .local v0, "timeString":Landroid/text/SpannableString;
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->setMaxTextSize(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 599
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setBatteryStatus()V

    .line 600
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAvailableTime:I

    .line 601
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-virtual {v1, v2, v4, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 598
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public initSeekbar()V
    .locals 25

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPowerSavingMode:I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "limit_brightness_state"

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    .line 181
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    .line 183
    const-string/jumbo v21, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const v22, 0x7f0b01b2

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTitle(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v21, v0

    const/16 v22, 0x50

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v21, v0

    .line 186
    const/16 v22, 0x5a

    .line 188
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v21, v0

    .line 186
    const/16 v22, 0x5a

    .line 189
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 194
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v21, v0

    rsub-int/lit8 v21, v21, 0x50

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "brightnessTopTextMin":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v21, v0

    rsub-int/lit8 v21, v21, 0x50

    div-int/lit8 v21, v21, 0x2

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "brightnessTopTextMid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0b08b5

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "brightnessTopTextMax":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 199
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u200e"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u200e"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u200e"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v21

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 206
    sub-int v12, v21, v22

    .line 209
    .local v12, "minTime":I
    if-lez v12, :cond_5

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v12, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v13

    .line 211
    .local v13, "minTimeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 216
    .end local v13    # "minTimeString":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x50

    div-int/lit8 v22, v22, 0x5

    .line 216
    add-int/lit8 v22, v22, 0x7

    .line 215
    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v21

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 215
    sub-int v11, v21, v22

    .line 219
    .local v11, "mediumTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v11, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x50

    div-int/lit8 v22, v22, 0x5

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    const-string/jumbo v21, "psm_screen_seekbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    .line 243
    const-string/jumbo v21, ""

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "screen_resolution_state"

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    .line 245
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    :goto_2
    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b05a7

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, "hd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b05aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "hd_px":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b05a8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "fhd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b05ab

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "fhd_px":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b05a9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, "wqhd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b05ac

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 255
    .local v20, "wqhd_px":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v21

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 258
    sub-int v16, v21, v22

    .line 261
    .local v16, "time2":I
    if-lez v16, :cond_7

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v18

    .line 263
    .local v18, "timeString2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 268
    .end local v18    # "timeString2":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xc

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v21

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 268
    sub-int v14, v21, v22

    .line 270
    .local v14, "screenMediumTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v15

    .line 271
    .local v15, "screenTimeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const v22, 0x7f0b0aac

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setSummary(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    .end local v7    # "fhd":Ljava/lang/String;
    .end local v8    # "fhd_px":Ljava/lang/String;
    .end local v9    # "hd":Ljava/lang/String;
    .end local v10    # "hd_px":Ljava/lang/String;
    .end local v14    # "screenMediumTime":I
    .end local v15    # "screenTimeString":Ljava/lang/String;
    .end local v16    # "time2":I
    .end local v19    # "wqhd":Ljava/lang/String;
    .end local v20    # "wqhd_px":Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .line 190
    .end local v4    # "brightnessTopTextMax":Ljava/lang/String;
    .end local v5    # "brightnessTopTextMid":Ljava/lang/String;
    .end local v6    # "brightnessTopTextMin":Ljava/lang/String;
    .end local v11    # "mediumTime":I
    .end local v12    # "minTime":I
    .end local v17    # "timeString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_0

    .line 192
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_0

    .line 213
    .restart local v4    # "brightnessTopTextMax":Ljava/lang/String;
    .restart local v5    # "brightnessTopTextMid":Ljava/lang/String;
    .restart local v6    # "brightnessTopTextMin":Ljava/lang/String;
    .restart local v12    # "minTime":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 248
    .restart local v11    # "mediumTime":I
    .restart local v17    # "timeString":Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 266
    .restart local v7    # "fhd":Ljava/lang/String;
    .restart local v8    # "fhd_px":Ljava/lang/String;
    .restart local v9    # "hd":Ljava/lang/String;
    .restart local v10    # "hd_px":Ljava/lang/String;
    .restart local v16    # "time2":I
    .restart local v19    # "wqhd":Ljava/lang/String;
    .restart local v20    # "wqhd_px":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 292
    .end local v7    # "fhd":Ljava/lang/String;
    .end local v8    # "fhd_px":Ljava/lang/String;
    .end local v9    # "hd":Ljava/lang/String;
    .end local v10    # "hd_px":Ljava/lang/String;
    .end local v16    # "time2":I
    .end local v19    # "wqhd":Ljava/lang/String;
    .end local v20    # "wqhd_px":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method initswitchBtn()V
    .locals 5

    .prologue
    .line 509
    const-string/jumbo v3, "PowerSavingValueFragment"

    const-string/jumbo v4, "PSM initswitchBtn"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 511
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    .line 512
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 513
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f04009c

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 514
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 515
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 516
    .local v1, "customView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 517
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    const v3, 0x7f110224

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 519
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 521
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    const v3, 0x7f110225

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    .line 522
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 523
    const v3, 0x7f110226

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    .line 524
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 525
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    const v4, 0x7f0b0437

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 526
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 527
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v1, 0x7f0205ad

    .line 760
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 762
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 763
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v1, 0x7f0205b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 769
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 759
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 766
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 149
    const-string/jumbo v1, "PowerSavingValueFragment"

    const-string/jumbo v2, "PSM onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setHasOptionsMenu(Z)V

    .line 155
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v1, "battery_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    .line 160
    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "PowerSavingValueFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPowerSavingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v4, :cond_1

    .line 163
    const-string/jumbo v1, "PowerSavingModePopupCustomize"

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initSeekbar()V

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V

    .line 172
    new-instance v1, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .line 175
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 148
    return-void

    .line 165
    :cond_1
    const-string/jumbo v1, "UltraPowerSavingModePopupCustomize"

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v5, 0x7f0205ad

    const/4 v4, 0x0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 710
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 711
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$12;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 726
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 727
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 752
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 707
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    return-void

    .line 729
    .restart local v0    # "customView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initswitchBtn()V

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->registerBatteryStatusReceiver()V

    .line 431
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 432
    .local v2, "rootView":Landroid/view/View;
    const-string/jumbo v4, "PowerSavingValueFragment"

    const-string/jumbo v5, "PSM onCreateView"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 436
    const v5, 0x7f0401d2

    .line 435
    invoke-virtual {v4, v5, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 438
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f11003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 439
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    const v4, 0x7f11003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "circleInnerTextContainer":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 444
    .end local v0    # "circleInnerTextContainer":Landroid/view/View;
    :cond_0
    const v4, 0x7f110553

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    .line 446
    const v4, 0x7f110554

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    .line 447
    const v4, 0x7f110555

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    .line 449
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 450
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a05d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 451
    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 449
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 453
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v4, v8, v8, v9}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->doRippleAnimation(IZZ)V

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setBatteryHeaderViewsVisibility()V

    .line 457
    const v4, 0x7f1100e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    .line 458
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 459
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v4, v8, :cond_3

    .line 460
    const v4, 0x7f0b0ac0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 464
    const v4, 0x7f110199

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    .line 465
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 468
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v5, 0x7f0205b0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$9;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->enableResetButton(Z)V

    .line 482
    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 483
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 484
    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 497
    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 498
    .local v1, "list":Landroid/widget/ListView;
    if-eqz v1, :cond_2

    .line 499
    invoke-virtual {v1, v3, v10, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 500
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 501
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 504
    :cond_2
    return-object v2

    .line 461
    .end local v1    # "list":Landroid/widget/ListView;
    :cond_3
    const v4, 0x7f0b0ac1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 670
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 672
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 669
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 692
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_0

    .line 695
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onPause - brightness rollback"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 698
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 691
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 659
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .line 662
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "limit_brightness_state"

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const/4 v4, 0x2

    invoke-static {v1, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 661
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 665
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 658
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 677
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 678
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, "filterBoostStart":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 680
    .local v1, "filterPowerChange":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 687
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 685
    return-void
.end method

.method public updateEstimatedTimeonHeader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 641
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 642
    .local v0, "time":I
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "timeString":Ljava/lang/String;
    if-gtz v0, :cond_0

    .line 644
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    .line 645
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 646
    const v4, 0x7f0a0203

    .line 645
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 644
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 647
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setEstimatedTimeTextSize(I)V

    goto :goto_0
.end method
