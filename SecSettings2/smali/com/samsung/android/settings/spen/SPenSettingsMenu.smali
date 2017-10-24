.class public Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;
    }
.end annotation


# static fields
.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private ContactUs_appId:Ljava/lang/String;

.field private ContactUs_appName:Ljava/lang/String;

.field private ContactUs_packageName:Ljava/lang/String;

.field private isMemoSupported:Z

.field private mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAirCommandPref:Landroid/preference/Preference;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDirectPenObserver:Landroid/database/ContentObserver;

.field private mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

.field private mInboxSPen:Z

.field private mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenScreenOnPref:Landroid/preference/SwitchPreference;

.field private mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

.field private mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private magnificationGesturesEnabled:Z

.field private magnifierWindowEnabled:Z

.field private sTalkbackEnabled:Z

.field private talkbackEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Z)V
    .locals 0
    .param p1, "OnOff"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 877
    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;-><init>()V

    .line 876
    sput-object v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    .line 138
    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    .line 140
    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mInboxSPen:Z

    .line 144
    const-string/jumbo v0, "com.sec.android.app.SmartClipService"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "Spen"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "304612tl4e"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 155
    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    .line 168
    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    .line 181
    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 976
    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    .line 71
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 759
    iput-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 756
    :cond_0
    return-void
.end method

.method private isNotesEnabled()Z
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.app.notes"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x1

    return v0

    .line 724
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    const-string/jumbo v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    return-void
.end method

.method private setAirviewDB(Z)V
    .locals 3
    .param p1, "OnOff"    # Z

    .prologue
    .line 747
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 748
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 751
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_icon_label"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 752
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_list_scroll"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_link_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 746
    return-void

    .line 747
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private showAirViewTalkBackDisableDialog()V
    .locals 10

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    .line 765
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b098a

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 768
    .local v5, "message":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 769
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b024b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 772
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 773
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b024a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 775
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b157a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 776
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b0233

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 780
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 781
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 782
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04001b

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 783
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v7, 0x7f11010e

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 784
    .local v2, "descText":Landroid/widget/TextView;
    const v7, 0x7f11010f

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 785
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0989

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 791
    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v9, 0x7f0b098b

    .line 788
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 802
    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v9, 0x1040000

    .line 788
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 807
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 808
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 763
    return-void
.end method

.method private showDirectPenInputTalkBackDisableDialog()V
    .locals 10

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    .line 820
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0c69

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 821
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 823
    .local v5, "message":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b024b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 827
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 828
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b024a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 830
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b157a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 831
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 832
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b0233

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 835
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 836
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 837
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04001b

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 838
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v7, 0x7f11010e

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 839
    .local v2, "descText":Landroid/widget/TextView;
    const v7, 0x7f11010f

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 840
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0c66

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 846
    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v9, 0x7f0b098b

    .line 843
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 860
    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v9, 0x1040000

    .line 843
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 865
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 866
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$11;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$11;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 818
    return-void
.end method

.method private updateEnableState()V
    .locals 13

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "air_button_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 419
    .local v5, "isEnable":I
    const-string/jumbo v10, "SPenSettingsMenu"

    const-string/jumbo v11, "updateEnableState() "

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 422
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    if-eqz v10, :cond_8

    .line 423
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 424
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/CharSequence;

    .line 425
    .local v1, "entries":[Ljava/lang/CharSequence;
    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    .line 426
    .local v3, "entryValue":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 427
    .local v2, "entryCount":I
    const/4 v10, 0x1

    if-ne v5, v10, :cond_4

    .line 428
    const v10, 0x7f0b0c7c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v1, v11

    .line 429
    const-string/jumbo v10, "2"

    const/4 v11, 0x0

    aput-object v10, v3, v11

    .line 430
    const/4 v2, 0x1

    .line 435
    :cond_0
    :goto_1
    iget-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-eqz v10, :cond_5

    .line 441
    const v10, 0x7f0b0c7b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v1, v11

    .line 442
    const-string/jumbo v10, "3"

    const/4 v11, 0x1

    aput-object v10, v3, v11

    .line 443
    add-int/lit8 v2, v2, 0x1

    .line 450
    :cond_1
    :goto_2
    const v10, 0x7f0b0c79

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    .line 451
    const-string/jumbo v10, "0"

    const/4 v11, 0x2

    aput-object v10, v3, v11

    .line 452
    add-int/lit8 v2, v2, 0x1

    .line 454
    new-array v6, v2, [Ljava/lang/CharSequence;

    .line 455
    .local v6, "newEntries":[Ljava/lang/CharSequence;
    new-array v7, v2, [Ljava/lang/CharSequence;

    .line 456
    .local v7, "newEntryValue":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 457
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v10, v1

    if-ge v4, v10, :cond_7

    .line 458
    aget-object v10, v1, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 459
    aget-object v10, v1, v4

    aput-object v10, v6, v0

    .line 460
    aget-object v10, v3, v4

    aput-object v10, v7, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    .line 457
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 421
    .end local v0    # "count":I
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entryCount":I
    .end local v3    # "entryValue":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v6    # "newEntries":[Ljava/lang/CharSequence;
    .end local v7    # "newEntryValue":[Ljava/lang/CharSequence;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 432
    .restart local v1    # "entries":[Ljava/lang/CharSequence;
    .restart local v2    # "entryCount":I
    .restart local v3    # "entryValue":[Ljava/lang/CharSequence;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 446
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 447
    .local v8, "optionNumber":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_6

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1

    .line 448
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 464
    .end local v8    # "optionNumber":I
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "newEntries":[Ljava/lang/CharSequence;
    .restart local v7    # "newEntryValue":[Ljava/lang/CharSequence;
    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v10, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 465
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v10, v7}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 414
    .end local v0    # "count":I
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entryCount":I
    .end local v3    # "entryValue":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v6    # "newEntries":[Ljava/lang/CharSequence;
    .end local v7    # "newEntryValue":[Ljava/lang/CharSequence;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_8
    return-void
.end method

.method private updateState()V
    .locals 14

    .prologue
    .line 470
    const-string/jumbo v9, "SPenSettingsMenu"

    const-string/jumbo v10, "updateState() "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 473
    const-string/jumbo v11, "pen_detachment_alert"

    const/4 v12, 0x1

    .line 472
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 475
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 476
    const-string/jumbo v11, "spen_feedback_sound"

    const/4 v12, 0x1

    .line 475
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 477
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 478
    const-string/jumbo v11, "spen_feedback_haptic"

    const/4 v12, 0x1

    .line 477
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 482
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 483
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detached_time"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 484
    .local v0, "detachTime":J
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f0b0c84

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "mLossPreventionAlertSummary":Ljava/lang/String;
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_5

    .line 486
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 487
    .local v7, "shortDateFormat":Ljava/text/DateFormat;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 489
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " \u200e "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 490
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 489
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 488
    const v10, 0x7f0b0c71

    .line 487
    invoke-virtual {v6, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "detachTimeStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    .end local v2    # "detachTimeStr":Ljava/lang/String;
    .end local v7    # "shortDateFormat":Ljava/text/DateFormat;
    :goto_4
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 496
    const-string/jumbo v11, "pen_hovering_pointer"

    const/4 v12, 0x0

    .line 495
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 497
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 498
    const-string/jumbo v11, "action_memo_on_off_screen"

    const/4 v12, 0x0

    .line 497
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 500
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 501
    const-string/jumbo v11, "screen_off_memo"

    const/4 v12, 0x0

    .line 500
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 503
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 504
    const-string/jumbo v10, "pen_detachment_option"

    const/4 v11, 0x0

    .line 503
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 505
    .local v5, "penDetachIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v9}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_9

    .line 506
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v9}, Lcom/android/settings/SecDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v5, v9, :cond_0

    .line 507
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 505
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 472
    .end local v0    # "detachTime":J
    .end local v3    # "i":I
    .end local v4    # "mLossPreventionAlertSummary":Ljava/lang/String;
    .end local v5    # "penDetachIndex":I
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 475
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 477
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 484
    .restart local v0    # "detachTime":J
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_4
    const v9, 0x7f0b0c83

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mLossPreventionAlertSummary":Ljava/lang/String;
    goto/16 :goto_3

    .line 493
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 495
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 497
    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    .line 500
    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    .line 510
    .restart local v3    # "i":I
    .restart local v5    # "penDetachIndex":I
    :cond_9
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 511
    const-string/jumbo v11, "pen_detect_mode_disabled"

    const/4 v12, 0x1

    .line 510
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 513
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 514
    const-string/jumbo v11, "spen_screen_on"

    const/4 v12, 0x0

    .line 513
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_d

    const/4 v8, 0x1

    .line 517
    .local v8, "writingBuddyOn":Z
    :goto_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 519
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 469
    :cond_a
    :goto_c
    return-void

    .line 510
    .end local v8    # "writingBuddyOn":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    .line 513
    :cond_c
    const/4 v9, 0x0

    goto :goto_a

    .line 516
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "writingBuddyOn":Z
    goto :goto_b

    .line 521
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_c
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 202
    const-string/jumbo v5, "SPenSettingsMenu"

    const-string/jumbo v6, "onCreate() "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 204
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    .line 207
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 209
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0800b6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    .line 211
    const-string/jumbo v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    .line 214
    const-string/jumbo v5, "pen_air_view"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 215
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 217
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    :cond_0
    const-string/jumbo v5, "key_writing_buddy"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 223
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 225
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    :cond_1
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    .line 230
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 231
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    .line 235
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 236
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    .line 240
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 241
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    .line 245
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 246
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    const v6, 0x7f0b0c5f

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 252
    :cond_2
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    .line 253
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 254
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    const-string/jumbo v5, "key_spen_screen_on"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    .line 258
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 259
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    .line 263
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 264
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    .line 268
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 269
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecDropDownPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    .line 278
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_3

    .line 279
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 280
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 282
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.android.app.SPenKeeper"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 283
    .local v1, "mSupportSPenKeeper":Z
    if-nez v1, :cond_4

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 289
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 300
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isNotesEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    .line 301
    iget-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "productName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 310
    const-string/jumbo v5, "spen_contact_us"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v5, "spen_contact_us_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 313
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 314
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_7

    .line 315
    const-string/jumbo v5, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "mSpenUspLevel":I
    rem-int/lit8 v5, v0, 0xa

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 319
    const-string/jumbo v5, "pen_detachment_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    const v6, 0x7f0b0c80

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 201
    .end local v0    # "mSpenUspLevel":I
    :cond_7
    return-void

    .line 290
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "productName":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 406
    const-string/jumbo v0, "SPenSettingsMenu"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f0b1953

    const v8, 0x7f0b1952

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "key_writing_buddy"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 532
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 533
    .local v4, "value":Z
    if-eqz v4, :cond_5

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "hoverZoom":Z
    const/4 v2, 0x0

    .line 536
    .local v2, "magnifier":Z
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v10}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    .line 539
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    const/4 v2, 0x1

    .line 540
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 544
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showDirectPenInputTalkBackDisableDialog()V

    .line 545
    return v6

    .line 537
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 539
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 540
    :cond_4
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 548
    .end local v0    # "hoverZoom":Z
    .end local v2    # "magnifier":Z
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    if-eqz v4, :cond_6

    move v5, v6

    :goto_2
    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 551
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 552
    const-string/jumbo v10, "pen_writing_buddy"

    .line 551
    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v8

    :goto_3
    invoke-virtual {v9, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 554
    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 555
    const-string/jumbo v9, "pen_writing_buddy"

    .line 554
    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 561
    :goto_5
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 562
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "direct pen input : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 564
    const-string/jumbo v10, "pen_writing_buddy"

    .line 563
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 562
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 561
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v6

    :cond_6
    move v5, v7

    .line 548
    goto :goto_2

    .line 553
    :cond_7
    const v5, 0x7f0b0c64

    goto :goto_3

    :cond_8
    move v5, v7

    .line 554
    goto :goto_4

    .line 557
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 558
    const-string/jumbo v11, "pen_writing_buddy"

    .line 557
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_a

    :goto_6
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_a
    move v8, v9

    .line 559
    goto :goto_6

    .line 566
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v5, "pen_air_view"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 567
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 568
    .restart local v4    # "value":Z
    if-eqz v4, :cond_11

    .line 569
    const/4 v0, 0x0

    .line 570
    .restart local v0    # "hoverZoom":Z
    const/4 v2, 0x0

    .line 571
    .restart local v2    # "magnifier":Z
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v10}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_e

    const/4 v0, 0x1

    .line 573
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_f

    const/4 v2, 0x1

    .line 575
    :cond_c
    :goto_8
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 576
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_10

    .line 579
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showAirViewTalkBackDisableDialog()V

    .line 580
    return v6

    .line 572
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 573
    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 575
    :cond_10
    if-nez v0, :cond_d

    if-nez v2, :cond_d

    .line 583
    .end local v0    # "hoverZoom":Z
    .end local v2    # "magnifier":Z
    :cond_11
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    .line 585
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 586
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 587
    const-string/jumbo v10, "pen_hovering"

    .line 586
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_12

    :goto_9
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 589
    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 590
    const-string/jumbo v9, "pen_hovering"

    .line 589
    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_13

    move v5, v6

    :goto_a
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 597
    :goto_b
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 598
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "air view : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 600
    const-string/jumbo v10, "pen_hovering"

    .line 599
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 598
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 597
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v6

    .line 588
    :cond_12
    const v8, 0x7f0b0828

    goto :goto_9

    :cond_13
    move v5, v7

    .line 589
    goto :goto_a

    .line 592
    :cond_14
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 593
    const-string/jumbo v11, "pen_hovering"

    .line 592
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_15

    :goto_c
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_b

    :cond_15
    move v8, v9

    .line 594
    goto :goto_c

    .line 602
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_16
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 603
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 604
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detect_mode_disabled"

    if-eqz v4, :cond_17

    move v5, v6

    :goto_d
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    if-eqz v4, :cond_18

    move v5, v6

    :goto_e
    invoke-static {v5}, Lcom/samsung/android/hardware/SemHardwareInterface;->setEPenSavingmode(I)Z

    .line 607
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 608
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery saving : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 610
    const-string/jumbo v10, "pen_detect_mode_disabled"

    .line 609
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 608
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 607
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v6

    :cond_17
    move v5, v7

    .line 605
    goto :goto_d

    :cond_18
    move v5, v7

    .line 606
    goto :goto_e

    .line 613
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_19
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 614
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 615
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering_pointer"

    if-eqz v4, :cond_1a

    move v5, v6

    :goto_f
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 617
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pointer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 618
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 619
    const-string/jumbo v10, "pen_hovering_pointer"

    .line 618
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 617
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 616
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v6

    :cond_1a
    move v5, v7

    .line 615
    goto :goto_f

    .line 621
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1b
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 622
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 623
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_alert"

    if-eqz v4, :cond_1c

    move v5, v6

    :goto_10
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 625
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 626
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loss prevention alert : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 628
    const-string/jumbo v10, "pen_detachment_alert"

    .line 627
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 626
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 625
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return v6

    :cond_1c
    move v5, v7

    .line 623
    goto :goto_10

    .line 630
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1d
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 631
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 632
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "action_memo_on_off_screen"

    if-eqz v4, :cond_1e

    move v5, v6

    :goto_11
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 633
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off memo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 636
    const-string/jumbo v10, "action_memo_on_off_screen"

    .line 635
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 634
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 633
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v6

    :cond_1e
    move v5, v7

    .line 632
    goto :goto_11

    .line 638
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1f
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 639
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 640
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_off_memo"

    if-eqz v4, :cond_20

    move v5, v6

    :goto_12
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off note : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 644
    const-string/jumbo v10, "screen_off_memo"

    .line 643
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 642
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v6

    :cond_20
    move v5, v7

    .line 640
    goto :goto_12

    .line 646
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_21
    const-string/jumbo v5, "key_spen_screen_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 647
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 648
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_screen_on"

    if-eqz v4, :cond_22

    move v5, v6

    :goto_13
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SPen screen on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 651
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 652
    const-string/jumbo v10, "spen_screen_on"

    .line 651
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 650
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 649
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v6

    :cond_22
    move v5, v7

    .line 648
    goto :goto_13

    .line 654
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_23
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 655
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 656
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_sound"

    if-eqz v4, :cond_24

    move v5, v6

    :goto_14
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_notification"

    if-eqz v4, :cond_25

    const-string/jumbo v5, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_15
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback sound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_sound"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 659
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 658
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return v6

    :cond_24
    move v5, v7

    .line 656
    goto :goto_14

    .line 657
    :cond_25
    sget-object v5, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_15

    .line 663
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_26
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 664
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 665
    .restart local v4    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_haptic"

    if-eqz v4, :cond_27

    move v5, v6

    :goto_16
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_attach_detach_vibration"

    if-eqz v4, :cond_28

    move v5, v6

    :goto_17
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    const-string/jumbo v5, "SPenSettingsMenu"

    .line 669
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback haptic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 670
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_haptic"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 669
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 668
    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return v6

    :cond_27
    move v5, v7

    .line 665
    goto :goto_16

    :cond_28
    move v5, v7

    .line 666
    goto :goto_17

    .line 673
    .end local v4    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_29
    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 674
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 675
    .local v3, "val":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "pen_detachment_option"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10017f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 677
    return v6

    .line 679
    .end local v3    # "val":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2a
    return v6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x7f100180

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    .line 684
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "key_air_button"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 686
    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "SEAC"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 687
    :cond_1
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100182

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 689
    :cond_3
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 690
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10017e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_2

    .line 691
    :cond_5
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 692
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100181

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3

    .line 693
    :cond_7
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 694
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_4

    .line 695
    :cond_9
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 696
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_5

    .line 697
    :cond_b
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 698
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100183

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_6

    .line 699
    :cond_d
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 700
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100184

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move v3, v4

    goto :goto_7

    .line 701
    :cond_f
    const-string/jumbo v3, "spen_contact_us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 704
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v6, 0x7f0b1953

    const v5, 0x7f0b1952

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 334
    const-string/jumbo v2, "SPenSettingsMenu"

    const-string/jumbo v7, "onResume() "

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "air_button_onoff"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 340
    .local v1, "isEnable":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "finger_magnifier"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    .line 341
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    .line 342
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "accessibility_display_magnification_enabled"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    .line 344
    const-string/jumbo v2, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnable() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " magnifierWindowEnabled :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  magnificationGesturesEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string/jumbo v2, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sTalkbackEnabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " talkbackEnabled :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    if-eqz v2, :cond_3

    .line 352
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    .line 353
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    .line 355
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 356
    const-string/jumbo v8, "pen_hovering"

    .line 355
    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 358
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 359
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 360
    const-string/jumbo v8, "pen_hovering"

    .line 359
    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    :goto_4
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 362
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 363
    const-string/jumbo v8, "pen_hovering"

    .line 362
    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 370
    :goto_6
    const/4 v0, 0x1

    .line 371
    .local v0, "bDPIenable":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v3, :cond_9

    .line 372
    const/4 v0, 0x0

    .line 373
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 379
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 380
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_b

    :goto_8
    invoke-virtual {v2, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 382
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 389
    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 390
    const-string/jumbo v4, "air_button_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 391
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    .line 389
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 393
    const-string/jumbo v4, "pen_detached_time"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 394
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    .line 392
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 398
    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    .line 397
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 400
    const-string/jumbo v4, "pen_hovering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 401
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 399
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 333
    return-void

    .end local v0    # "bDPIenable":Z
    :cond_1
    move v2, v4

    .line 340
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 343
    goto/16 :goto_1

    .line 347
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    if-nez v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "air_button_onoff"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_4
    move v2, v4

    .line 355
    goto/16 :goto_3

    .line 361
    :cond_5
    const v2, 0x7f0b0828

    goto/16 :goto_4

    :cond_6
    move v2, v4

    .line 362
    goto/16 :goto_5

    .line 365
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 366
    const-string/jumbo v8, "pen_hovering"

    .line 365
    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_a
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_8
    move v2, v6

    .line 367
    goto :goto_a

    .line 375
    .restart local v0    # "bDPIenable":Z
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "pen_writing_buddy"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    .line 376
    :goto_b
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 375
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 381
    :cond_b
    const v5, 0x7f0b0c64

    goto/16 :goto_8

    .line 384
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_d

    :goto_c
    invoke-virtual {v2, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_d
    move v5, v6

    .line 385
    goto :goto_c
.end method
