.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DeviceVisibilitySettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$1;,
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;,
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;
    }
.end annotation


# instance fields
.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mDescription:Landroid/widget/TextView;

.field private mDeviceVisibilityObserver:Landroid/database/ContentObserver;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIsPressedSwitchBar:Z

.field private mIsPressedWithCheckingPermission:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarChildView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->updateSwitchBar()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedWithCheckingPermission:Z

    .line 232
    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$1;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    .line 240
    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 253
    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    if-nez v0, :cond_1

    .line 225
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 227
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "mDeviceName":Ljava/lang/String;
    return-object v1
.end method

.method private updateSwitchBar()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string/jumbo v3, "DeviceVisibilitySettings"

    const-string/jumbo v4, "updateSwitch"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    .line 213
    .local v1, "state":I
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 209
    :cond_0
    return-void

    .line 214
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const-string/jumbo v1, "DeviceVisibilitySettings"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->setHasOptionsMenu(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 145
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 146
    const v1, 0x7f0b0730

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 150
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const v1, 0x7f0400de

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1102dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDescription:Landroid/widget/TextView;

    .line 163
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedWithCheckingPermission:Z

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 71
    const-string/jumbo v3, "DeviceVisibilitySettings"

    const-string/jumbo v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 74
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 75
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getChildCount()I

    move-result v1

    .line 77
    .local v1, "childLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 84
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 110
    .end local v1    # "childLen":I
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->updateSwitchBar()V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 113
    sget-object v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    .line 112
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDescription:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 114
    const v5, 0x7f0b0732

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "DeviceVisibility"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 77
    .restart local v1    # "childLen":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 10
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    const-string/jumbo v5, "DeviceVisibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSwitchChanged + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    if-eqz v5, :cond_1

    .line 179
    :cond_0
    const-string/jumbo v5, "DeviceVisibilitySettings"

    const-string/jumbo v8, "onSwitchChanged : isPressed || true"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f03f1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 183
    const v9, 0x7f0f03f3

    .line 182
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 184
    if-eqz p2, :cond_4

    const/16 v5, 0x3e8

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 181
    invoke-static {v0, v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 187
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->hasPermissions(Landroid/content/Context;)Z

    move-result v2

    .line 188
    .local v2, "hasPermissions":Z
    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isQcFirstLaunched(Landroid/content/Context;)Z

    move-result v4

    .line 189
    .local v4, "isFirstLaunch":Z
    if-eqz v2, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    if-eqz p2, :cond_5

    .line 190
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "DEVICE_VISIBILITY_STATE_VALUE"

    if-eqz p2, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string/jumbo v5, "com.samsung.android.oneconnect"

    .line 193
    const-string/jumbo v6, "com.samsung.android.oneconnect.ui.SettingsPermissionActivity"

    .line 192
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedWithCheckingPermission:Z

    .line 197
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "Settings_more"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    return-void

    .end local v2    # "hasPermissions":Z
    .end local v4    # "isFirstLaunch":Z
    :cond_4
    move v5, v6

    .line 184
    goto :goto_0

    .line 198
    .restart local v2    # "hasPermissions":Z
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "isFirstLaunch":Z
    :catch_0
    move-exception v1

    .line 199
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "DeviceVisibilitySettings"

    const-string/jumbo v6, "ActivityNotFoundException - SettingsPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    if-eqz p2, :cond_6

    .line 203
    :goto_2
    const-string/jumbo v5, "Settings_more"

    .line 202
    invoke-static {v0, v7, v5}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    move v7, v6

    goto :goto_2
.end method
