.class public Lcom/samsung/android/settings/easymode/EasyModeApp;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/easymode/EasyModeApp$1;,
        Lcom/samsung/android/settings/easymode/EasyModeApp$2;,
        Lcom/samsung/android/settings/easymode/EasyModeApp$3;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAm:Landroid/app/ActivityManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEasyModeClickListener:Landroid/view/View$OnClickListener;

.field private mEasyModeLayout:Landroid/widget/LinearLayout;

.field private mEasyModeRadio:Landroid/widget/RadioButton;

.field private mEasyTextView:Landroid/widget/TextView;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field private mHasEasyLauncher:Z

.field private mHeaderView:Landroid/view/View;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsCustomActionbarCreated:Z

.field private mIsEnabledShowBtnBg:Z

.field private mIsSharedDevice:Z

.field private mList:Landroid/widget/ListView;

.field private mModeRadioGroup:Landroid/widget/LinearLayout;

.field private mModeState:I

.field private mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/Button;

.field private mStandardModeClickListener:Landroid/view/View$OnClickListener;

.field private mStandardModeLayout:Landroid/widget/LinearLayout;

.field private mStandardModeRadio:Landroid/widget/RadioButton;

.field private mStdTextView:Landroid/widget/TextView;

.field private mTempState:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get3()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/easymode/EasyModeApp;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->disableEasyMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->enableEasyMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->goToPersonal()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V
    .locals 0
    .param p1, "isEasyLauncherEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->showPinWindowToast()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 117
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsEnabledShowBtnBg:Z

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    .line 168
    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    .line 170
    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    .line 665
    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 98
    return-void
.end method

.method private applyDisplayDensity(Z)V
    .locals 4
    .param p1, "isEasyMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    .line 407
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    goto :goto_0
.end method

.method private disableEasyMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    .line 400
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setStandardFont()V

    .line 402
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->applyDisplayDensity(Z)V

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 398
    return-void
.end method

.method private enableEasyMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "EasyModeApp"

    const-string/jumbo v1, "can\'t enable easy mode due to mobile keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 390
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setEasyFont()V

    .line 393
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->applyDisplayDensity(Z)V

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 385
    return-void
.end method

.method private getHomeComponentSet()[Landroid/content/ComponentName;
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 566
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Landroid/content/ComponentName;

    .line 567
    .local v3, "homeComponentSet":[Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isKnoxMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 569
    new-array v3, v7, [Landroid/content/ComponentName;

    .line 570
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.easylauncher"

    const-string/jumbo v8, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 571
    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 572
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 575
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.launcher"

    const-string/jumbo v8, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v9

    .line 591
    :cond_1
    :goto_0
    return-object v3

    .line 573
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.launcher"

    const-string/jumbo v8, "com.android.launcher2.Launcher"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v9

    goto :goto_0

    .line 579
    :cond_3
    const/4 v1, 0x0

    .line 580
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .line 581
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    const/4 v0, 0x0

    .line 582
    .local v0, "activityName":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 583
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 584
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 585
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v3, v4

    .line 587
    const-string/jumbo v6, "EasyModeApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "make homeComponentSet ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getNewHomeComponent(Z)Landroid/content/ComponentName;
    .locals 3
    .param p1, "isEasyLauncherReplaced"    # Z

    .prologue
    .line 547
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    const-string/jumbo v2, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .local v0, "newHome":Landroid/content/ComponentName;
    if-eqz p1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 550
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "newHome":Landroid/content/ComponentName;
    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    const-string/jumbo v2, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .restart local v0    # "newHome":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-object v0

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "newHome":Landroid/content/ComponentName;
    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const-string/jumbo v2, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "newHome":Landroid/content/ComponentName;
    goto :goto_0

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "newHome":Landroid/content/ComponentName;
    const-string/jumbo v1, "com.sec.android.app.launcher"

    const-string/jumbo v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "newHome":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private goToPersonal()V
    .locals 3

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 647
    .local v0, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(I)Z

    .line 648
    const-string/jumbo v1, "EasyModeApp"

    const-string/jumbo v2, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v0    # "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    return-void
.end method

.method private initSwitchBtn()V
    .locals 4

    .prologue
    .line 297
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    .line 299
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 300
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f04009c

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 301
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 303
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 305
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const v2, 0x7f110224

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 307
    .local v1, "headerBar":Landroid/widget/LinearLayout;
    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 309
    .end local v1    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    const v2, 0x7f110225

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    .line 310
    const v2, 0x7f110226

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    .line 312
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 296
    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "currConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initSwitchBtn()V

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "easySettingsView":Landroid/view/View;
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 285
    const v1, 0x7f0400e6

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, "easySettingsView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->rebuildLayout(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 280
    return-void

    .line 287
    .local v0, "easySettingsView":Landroid/view/View;
    :cond_0
    const v1, 0x7f0400e5

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "easySettingsView":Landroid/view/View;
    goto :goto_0
.end method

.method private isEasyLauncher()Z
    .locals 5

    .prologue
    .line 633
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    .line 634
    const-string/jumbo v4, "com.sec.android.app.easylauncher.Launcher"

    .line 633
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .local v1, "easyLauncerCN":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 637
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    const/4 v3, 0x1

    return v3

    .line 640
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isKnoxMode()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 652
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 656
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 657
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "com.android.internal.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    const/4 v3, 0x1

    return v3

    .line 660
    :cond_0
    return v5
.end method

.method private isMobileKeyboardCovered()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 620
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 622
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v6, :cond_0

    .line 623
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 624
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b060e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 623
    const v4, 0x7f0b05c4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 625
    return v6

    .line 629
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_0
    return v7
.end method

.method private requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V
    .locals 6
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "radioBtn"    # Landroid/widget/RadioButton;

    .prologue
    .line 708
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeEasyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 710
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChangeEasyMode)containerView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 711
    const-string/jumbo v2, ", radioBtn="

    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 711
    const-string/jumbo v2, ", mIsCustomActionbarCreated="

    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 711
    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "EasyMode"

    .line 713
    const-string/jumbo v3, "Mode"

    const-string/jumbo v4, "Exists"

    const-string/jumbo v5, "no"

    .line 712
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    .line 715
    return-void

    .line 709
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChangeEasyMode)radioBtn.isChecked()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "EasyMode"

    .line 720
    const-string/jumbo v3, "Mode"

    const-string/jumbo v4, "AlreadyApplied"

    const-string/jumbo v5, "yes"

    .line 719
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 722
    return-void

    .line 725
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "EasyMode"

    .line 726
    const-string/jumbo v3, "Mode"

    const-string/jumbo v4, "AlreadyApplied"

    const-string/jumbo v5, "no"

    .line 725
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    .line 728
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 731
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$6;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    .line 738
    const-wide/16 v2, 0x12c

    .line 731
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    return-void
.end method

.method private setEasyLauncher(Z)V
    .locals 6
    .param p1, "isEasyLauncherEnabled"    # Z

    .prologue
    .line 530
    const-string/jumbo v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEasyLauncher isEasyLauncherEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v3, :cond_0

    .line 532
    return-void

    .line 535
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 537
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getHomeComponentSet()[Landroid/content/ComponentName;

    move-result-object v0

    .line 540
    .local v0, "homeComponentSet":[Landroid/content/ComponentName;
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getNewHomeComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 542
    .local v2, "newHome":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x100000

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 529
    return-void
.end method

.method private setEasyMode(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x0

    .line 490
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 493
    .local v2, "isEasyMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    if-eqz v3, :cond_0

    .line 494
    if-eqz v2, :cond_2

    .line 495
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v4, "easymode"

    const-string/jumbo v5, "enable easy mode"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 501
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "intent1":Landroid/content/Intent;
    const-string/jumbo v3, "easymode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    const-string/jumbo v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "easymode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    const-string/jumbo v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 489
    return-void

    .line 492
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "isEasyMode":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isEasyMode":Z
    goto :goto_0

    .line 497
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v4, "easymode"

    const-string/jumbo v5, "return standard mode not easy mode"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private showPinWindowToast()V
    .locals 8

    .prologue
    .line 595
    const-string/jumbo v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 598
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    .line 599
    .local v2, "hasPermanentMenuKey":Z
    if-eqz v2, :cond_1

    .line 600
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tw_lock_to_app_toast_accessible"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 612
    .local v3, "text":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 613
    return-void

    .line 603
    .end local v3    # "text":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tw_lock_to_app_toast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 606
    .end local v3    # "text":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lock_to_app_toast_accessible"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 609
    .end local v3    # "text":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lock_to_app_toast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 614
    .end local v2    # "hasPermanentMenuKey":Z
    .end local v3    # "text":I
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 594
    return-void
.end method

.method private startLauncher()V
    .locals 3

    .prologue
    .line 513
    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v2, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v1, "launcherIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 3

    .prologue
    .line 699
    sget-object v1, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "EasyModeApply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const-string/jumbo v1, "StandardModeApply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V

    goto :goto_0
.end method

.method public exeOptAction()V
    .locals 0

    .prologue
    .line 688
    return-void
.end method

.method public exePrefAction()V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public exeViewAction()V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f110345

    if-ne v0, v1, :cond_2

    .line 365
    iput v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTempState:I

    iput v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 382
    :cond_1
    const-string/jumbo v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged mModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 370
    :cond_2
    iput v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTempState:I

    iput v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 239
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 245
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initView(Landroid/view/LayoutInflater;Landroid/content/res/Configuration;)V

    .line 247
    iget v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTempState:I

    if-ne v1, v3, :cond_1

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 238
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    const-string/jumbo v2, "EasyModeApp"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    .line 195
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    .line 196
    new-instance v2, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    .line 197
    new-instance v2, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v2, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 198
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 200
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    .line 201
    const-string/jumbo v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "has easy launcher:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    .line 206
    const v2, 0x7f08006d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setHasOptionsMenu(Z)V

    .line 210
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->initFontSettings()V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsEnabledShowBtnBg:Z

    .line 214
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 216
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    .line 190
    return-void

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v5, 0x7f0205ad

    const/4 v4, 0x0

    .line 417
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 420
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/easymode/EasyModeApp$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$4;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0b0438

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 429
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/easymode/EasyModeApp$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$5;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsEnabledShowBtnBg:Z

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 466
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    .line 471
    .local v1, "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    if-eqz v2, :cond_2

    .line 479
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 480
    const-string/jumbo v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SharedDevice: disableButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    .line 416
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 262
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    .line 263
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initView(Landroid/view/LayoutInflater;Landroid/content/res/Configuration;)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "mEasyModeState":I
    const-string/jumbo v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettingsState mEasyModeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-ne v0, v5, :cond_0

    .line 268
    iput v5, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 270
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 277
    :goto_0
    return-object v1

    .line 272
    :cond_0
    iput v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 273
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 274
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "EasyMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 221
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "EasyMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 323
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHeaderView:Landroid/view/View;

    .line 324
    const v0, 0x7f1102d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeRadioGroup:Landroid/widget/LinearLayout;

    .line 325
    const v0, 0x7f110344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    .line 326
    const v0, 0x7f110347

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    .line 327
    const v0, 0x7f110345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    .line 328
    const v0, 0x7f110348

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    .line 329
    const v0, 0x7f11034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f11034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    .line 340
    const v0, 0x7f110346

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f110349

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyTextView:Landroid/widget/TextView;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setFontSizeIfNeeded(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 357
    const-string/jumbo v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SharedDevice: disableButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x7d0

    const/4 v1, 0x2

    .line 680
    const-string/jumbo v0, "EasyModeApply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    const-string/jumbo v0, "StandardModeApply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 745
    return-void
.end method
