.class public Lcom/samsung/android/settings/SmartStaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SmartStaySettings$1;,
        Lcom/samsung/android/settings/SmartStaySettings$2;
    }
.end annotation


# static fields
.field private static SMART_STAY:I

.field private static SMART_STAY_ONOFF:I


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/SmartStaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/SmartStaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->dismissAllDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 60
    new-instance v0, Lcom/samsung/android/settings/SmartStaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SmartStaySettings$1;-><init>(Lcom/samsung/android/settings/SmartStaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    .line 298
    new-instance v0, Lcom/samsung/android/settings/SmartStaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SmartStaySettings$2;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 46
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 294
    iput-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 291
    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->dismissAllDialog()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "enabledTalkbackName":Ljava/lang/String;
    const v3, 0x7f0b0429

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 231
    aput-object v0, v4, v6

    .line 230
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "popup_title":Ljava/lang/String;
    const v3, 0x7f0b042a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 233
    const v5, 0x7f0b05b5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 232
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "popup_msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 236
    new-instance v4, Lcom/samsung/android/settings/SmartStaySettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/SmartStaySettings$5;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    const v5, 0x7f0b042b

    .line 234
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 243
    new-instance v4, Lcom/samsung/android/settings/SmartStaySettings$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/SmartStaySettings$6;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    const/high16 v5, 0x1040000

    .line 234
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 248
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/SmartStaySettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/SmartStaySettings$7;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 8

    .prologue
    const v7, 0x7f0b0246

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->dismissAllDialog()V

    .line 261
    const v2, 0x7f0b0429

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 262
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 261
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "popup_title":Ljava/lang/String;
    const v2, 0x7f0b042a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 264
    const v4, 0x7f0b05b5

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 265
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 263
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 268
    new-instance v3, Lcom/samsung/android/settings/SmartStaySettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/SmartStaySettings$8;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    const v4, 0x7f0b042b

    .line 266
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 275
    new-instance v3, Lcom/samsung/android/settings/SmartStaySettings$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/SmartStaySettings$9;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    const/high16 v4, 0x1040000

    .line 266
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 280
    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/SmartStaySettings$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/SmartStaySettings$10;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 259
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/SmartStaySettings;->SMART_STAY:I

    .line 73
    sget v0, Lcom/samsung/android/settings/SmartStaySettings;->SMART_STAY:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 104
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 99
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x0

    .line 176
    if-eqz p2, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V

    .line 179
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    .line 180
    if-eqz v1, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V

    .line 183
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :goto_0
    return-void

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 190
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/settings/SmartStaySettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/SmartStaySettings$3;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    .line 194
    const-wide/16 v2, 0x1f4

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/SmartStaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 157
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0402b3

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, "newView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 159
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 160
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    iget-object v6, p0, Lcom/samsung/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    iget-object v6, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v7, 0x7f110685

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 164
    .local v1, "dualFolderLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    .end local v1    # "dualFolderLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v7, 0x7f110682

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 168
    .local v4, "smartStayHelpImg":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 169
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 154
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 79
    const v3, 0x7f0402b3

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    .line 80
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    .line 82
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v4, 0x7f110685

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .local v1, "dualFolderLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    .end local v1    # "dualFolderLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v4, 0x7f110682

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    .local v2, "smartStayHelpImg":Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    const v3, 0x7f0204c0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 92
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 144
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->dismissAllDialog()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SmartStay"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SmartStay"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 130
    return-void

    :cond_2
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 203
    if-eqz p2, :cond_3

    .line 204
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V

    .line 206
    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V

    .line 209
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/SmartStaySettings;->SMART_STAY_ONOFF:I

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/SmartStaySettings;->SMART_STAY_ONOFF:I

    if-eqz p2, :cond_2

    const/16 v1, 0x3e8

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 202
    return-void

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 216
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/settings/SmartStaySettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/SmartStaySettings$4;-><init>(Lcom/samsung/android/settings/SmartStaySettings;)V

    .line 220
    const-wide/16 v4, 0x1f4

    .line 216
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
