.class public Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "QuickCameraSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$1;,
        Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mQuickCameraDisableDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 269
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 48
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 217
    :cond_0
    return-void
.end method

.method private quickCameraDisablePopup()V
    .locals 9

    .prologue
    const v8, 0x7f0b02bb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->dismissAllDialog()V

    .line 179
    const v3, 0x7f0b04f9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 179
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "popup_title":Ljava/lang/String;
    const v3, 0x7f0b04fa

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 182
    const v5, 0x7f0b04c9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 183
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 181
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "popup_msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, "tempValue":I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b04fb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    new-instance v5, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    .line 186
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 200
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    const/high16 v5, 0x1040000

    .line 186
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 204
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    .line 186
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 177
    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    rem-int/lit8 v1, p1, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 107
    .local v0, "onOff":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 109
    if-le p1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 104
    :goto_1
    return-void

    .line 106
    .end local v0    # "onOff":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "onOff":Z
    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 88
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 89
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 92
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040369

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 93
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f110600

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, "mTitleView":Landroid/widget/TextView;
    const v6, 0x7f110601

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, "mSummaryView":Landroid/widget/TextView;
    const v6, 0x7f1105ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 96
    .local v2, "mAnimationView":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const v6, 0x7f0b04cc

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->addPreferencesFromResource(I)V

    .line 74
    const-string/jumbo v0, "power_button"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    .line 75
    const-string/jumbo v0, "home_button"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    .line 80
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 69
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 150
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->dismissAllDialog()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "QuickCameraSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 4
    .param p1, "emiter"    # Lcom/samsung/android/settings/SecRadioButtonPreference;

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->quickCameraDisablePopup()V

    .line 160
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 168
    const/4 v0, 0x3

    .line 172
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "double_tab_launch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 123
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    .line 130
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v1, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "QuickCameraSettings"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 120
    return-void

    .line 132
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "tempValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lcd_curtain"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 228
    if-eqz p2, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->quickCameraDisablePopup()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 233
    .local v0, "onOff":I
    :goto_1
    const/4 v2, 0x0

    .line 234
    .local v2, "value":I
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    const/4 v2, 0x0

    .line 240
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    add-int v5, v2, v0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    add-int v3, v2, v0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    goto :goto_0

    .line 232
    .end local v0    # "onOff":I
    .end local v2    # "value":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "onOff":I
    goto :goto_1

    .line 237
    .restart local v2    # "value":I
    :cond_3
    const/4 v2, 0x2

    goto :goto_2
.end method
