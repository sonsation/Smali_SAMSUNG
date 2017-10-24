.class public Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "UsefulFeatureHub.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    }
.end annotation


# static fields
.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE:I

.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

.field private static SETTINGS_ADVANCEDFEATURE_MULTIWINDOW_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

.field private static mBixbyCurrentStateId:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;",
            ">;"
        }
    .end annotation
.end field

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFeatureName:Ljava/lang/String;

.field private mLoggingEvent:I

.field private mLoggingFlow:I

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionType:Ljava/lang/String;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private final mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    .line 116
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 128
    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    .line 130
    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    .line 132
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    .line 140
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    .line 148
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    .line 164
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 192
    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 810
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 73
    return-void
.end method

.method private createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 221
    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 223
    :cond_0
    const v5, 0x7f040318

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    .line 224
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f11050d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 225
    .local v4, "mTitleView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f11050e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 226
    .local v3, "mSummaryView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f11050c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 228
    .local v2, "mAnimationView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 229
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 232
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    .line 235
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    .line 236
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v6, "direct_share"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 238
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 242
    .end local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    .line 243
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 246
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_4

    .line 247
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    return-object v5
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 774
    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 771
    :cond_0
    return-void
.end method

.method private insertlog(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "merged_mute_or_pause_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    if-eqz p1, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    .line 707
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "enabledTalkbackName":Ljava/lang/String;
    const v3, 0x7f0b0429

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 709
    aput-object v0, v4, v6

    .line 708
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "popup_title":Ljava/lang/String;
    const v3, 0x7f0b042a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 711
    const v5, 0x7f0b0973

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 710
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, "popup_msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 714
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v5, 0x7f0b042b

    .line 712
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 722
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v5, 0x1040000

    .line 712
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 727
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 735
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 705
    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 8

    .prologue
    const v7, 0x7f0b0246

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 739
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    .line 740
    const v2, 0x7f0b0429

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 741
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 740
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "popup_title":Ljava/lang/String;
    const v2, 0x7f0b042a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 743
    const v4, 0x7f0b0973

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 744
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 742
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 747
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v4, 0x7f0b042b

    .line 745
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 755
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    .line 745
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 760
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 768
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 738
    return-void
.end method

.method private setDescriptions()V
    .locals 9

    .prologue
    const v8, 0x7f0b0984

    const v7, 0x7f0b0414

    const v6, 0x7f020531

    const/high16 v5, 0x200000

    const v4, 0x7f10019e

    .line 486
    const-string/jumbo v2, "UsefulFeatureHub"

    const-string/jumbo v3, "setDescriptions"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 488
    .local v0, "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 490
    .local v1, "hasSoftkey":Z
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "pick_up_to_call_out_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 492
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "pick_up_to_call_out_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 493
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 494
    const v2, 0x7f020388

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 504
    :goto_0
    const v2, 0x7f0b0970

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 505
    const-string/jumbo v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 506
    :cond_0
    const v2, 0x7f0b0980

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 510
    :goto_1
    const-string/jumbo v2, "motion_pick_up_to_call_out"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 511
    const-string/jumbo v2, "UFDC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    .line 514
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 515
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 516
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "pick_up_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 521
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 522
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "pick_up_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 523
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 524
    const v2, 0x7f0203a7

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 534
    :goto_2
    const v2, 0x7f0b0971

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 535
    const-string/jumbo v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 536
    :cond_2
    const v2, 0x7f0b0982

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 540
    :goto_3
    const-string/jumbo v2, "motion_pick_up"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 541
    const-string/jumbo v2, "UFSA"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    .line 544
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 545
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 546
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 551
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 552
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "merged_mute_or_pause_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 554
    const v2, 0x7f020152

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 570
    :goto_4
    const v2, 0x7f0b0972

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 571
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 573
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 574
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 578
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 579
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 580
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 585
    :cond_4
    :goto_6
    const-string/jumbo v2, "motion_merged_mute_pause"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 586
    const-string/jumbo v2, "UFEM"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 587
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    .line 589
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 590
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 591
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 596
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 597
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "palm_swipe_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 598
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 599
    const v2, 0x7f02014f

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 607
    :goto_7
    const v2, 0x7f0b0973

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 608
    const v2, 0x7f0b0983

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 609
    const-string/jumbo v2, "surface_palm_swipe"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 610
    const-string/jumbo v2, "UFPC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    .line 612
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    .line 613
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 614
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 615
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "multi_window_setting"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 620
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 621
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "multi_window_setting"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 622
    const v2, 0x7f020396

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 623
    const v2, 0x7f0b0976

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 624
    const v2, 0x7f0b0977

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 625
    const-string/jumbo v2, "db_popup_view_shortcut"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 626
    const-string/jumbo v2, "UFPG"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW_SWITCH:I

    .line 629
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 630
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 631
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.app.scrollcapture"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 635
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 636
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "smart_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 637
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 638
    const v2, 0x7f020435

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 654
    :goto_8
    const v2, 0x7f0b0400

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 655
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 656
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 657
    const v2, 0x7f0b040d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 664
    :goto_9
    const-string/jumbo v2, "enable_smart_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 665
    const-string/jumbo v2, "UFSC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 666
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    .line 667
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    .line 668
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 669
    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 670
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_8
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 674
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "direct_share"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 675
    const v2, 0x7f0200f7

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 676
    const v2, 0x7f0b0413

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 677
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0416

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 682
    :goto_a
    const-string/jumbo v2, "direct_share"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 683
    const-string/jumbo v2, "UFDS"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 684
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 685
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 686
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 690
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string/jumbo v2, "swipe_to_call_or_send_messages"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 691
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 692
    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 696
    :goto_b
    const v2, 0x7f0b042c

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 697
    const v2, 0x7f0b042d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    .line 698
    const-string/jumbo v2, "swipe_to_call_message"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 699
    const-string/jumbo v2, "UFCM"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 700
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    .line 701
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    .line 702
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    return-void

    .line 495
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 496
    const v2, 0x7f020387

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    .line 498
    :cond_a
    if-eqz v1, :cond_b

    .line 499
    const v2, 0x7f020389

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    .line 501
    :cond_b
    const v2, 0x7f020386

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    .line 508
    :cond_c
    const v2, 0x7f0b097f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 525
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 526
    const v2, 0x7f0203a6

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_2

    .line 528
    :cond_e
    if-eqz v1, :cond_f

    .line 529
    const v2, 0x7f0203a8

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_2

    .line 531
    :cond_f
    const v2, 0x7f0203a5

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_2

    .line 538
    :cond_10
    const v2, 0x7f0b0981

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_3

    .line 555
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 556
    const v2, 0x7f020155

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    .line 557
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 558
    if-eqz v1, :cond_13

    .line 559
    const v2, 0x7f020153

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    .line 561
    :cond_13
    const v2, 0x7f020151

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    .line 564
    :cond_14
    if-eqz v1, :cond_15

    .line 565
    const v2, 0x7f020156

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    .line 567
    :cond_15
    const v2, 0x7f020154

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    .line 572
    :cond_16
    const v2, 0x7f0b0986

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_5

    .line 576
    :cond_17
    const v2, 0x7f0b0985

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_5

    .line 582
    :cond_18
    const v2, 0x7f0b0985

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_6

    .line 601
    :cond_19
    if-eqz v1, :cond_1a

    .line 602
    const v2, 0x7f020150

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_7

    .line 604
    :cond_1a
    const v2, 0x7f02014e

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_7

    .line 639
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 640
    const v2, 0x7f020433

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    .line 641
    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 642
    if-eqz v1, :cond_1d

    .line 643
    const v2, 0x7f020451

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    .line 645
    :cond_1d
    const v2, 0x7f020432

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    .line 648
    :cond_1e
    if-eqz v1, :cond_1f

    .line 649
    const v2, 0x7f020452

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    .line 651
    :cond_1f
    const v2, 0x7f020434

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    .line 659
    :cond_20
    const v2, 0x7f0b040e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_9

    .line 662
    :cond_21
    const v2, 0x7f0b040c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_9

    .line 680
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0415

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_a

    .line 694
    :cond_23
    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_b
.end method

.method private smartCaptureDisablePopup()V
    .locals 8

    .prologue
    const v7, 0x7f0b0233

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 779
    const v2, 0x7f0b0429

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 780
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 779
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "popup_title":Ljava/lang/String;
    const v2, 0x7f0b042a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 782
    const v4, 0x7f0b0400

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 783
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 781
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 787
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b042b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 788
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    .line 785
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 796
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    .line 795
    const/high16 v4, 0x1040000

    .line 785
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 801
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    .line 785
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    .line 778
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 255
    const-string/jumbo v2, "UsefulFeatureHub"

    const-string/jumbo v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 258
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 259
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "switchState":Z
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "swipe_to_call_or_send_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 268
    :goto_0
    const-string/jumbo v2, "UsefulFeatureHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityCreated() switchState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 253
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "smart_capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 381
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 384
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 386
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "multi_window_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "palm_swipe_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v3, :cond_2

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const-string/jumbo v1, "UsefulFeatureHub"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->setDescriptions()V

    .line 211
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 200
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 428
    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 426
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 400
    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "palm_swipe_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 398
    return-void

    .line 410
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 274
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 275
    const-string/jumbo v6, "UsefulFeatureHub"

    const-string/jumbo v9, "onResume"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "pick_up_to_call_out_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 277
    const-string/jumbo v6, "DirectCall"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 291
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "palm_swipe_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 293
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 295
    .local v2, "isScreenCaptureEnabled":Ljava/lang/Boolean;
    new-array v4, v7, [Ljava/lang/String;

    .line 296
    const-string/jumbo v6, "false"

    aput-object v6, v4, v8

    .line 298
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 299
    const-string/jumbo v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 300
    const-string/jumbo v10, "isScreenCaptureEnabled"

    .line 298
    invoke-static {v6, v9, v10, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "isScreenCapture":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_1

    .line 302
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 309
    const-string/jumbo v9, "access_control_enabled"

    .line 308
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, "onInteractionConrol":I
    if-ne v3, v7, :cond_2

    .line 311
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 314
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 315
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 316
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "surface_palm_swipe"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 325
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 329
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "surface_palm_swipe"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    .end local v1    # "isScreenCapture":I
    .end local v2    # "isScreenCaptureEnabled":Ljava/lang/Boolean;
    .end local v3    # "onInteractionConrol":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    .line 366
    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 365
    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 367
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 369
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v6, v7, :cond_5

    .line 370
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 374
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 376
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 273
    return-void

    .line 278
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "pick_up_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 279
    const-string/jumbo v6, "SmartAlert"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    .line 280
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "merged_mute_or_pause_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 281
    const-string/jumbo v6, "EasyMute"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    .line 282
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "palm_swipe_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 283
    const-string/jumbo v6, "PalmSwipeToCapture"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 285
    const-string/jumbo v6, "SmartCapture"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    .line 286
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "direct_share"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 287
    const-string/jumbo v6, "DirectShare"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    .line 288
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    const-string/jumbo v6, "SwipeToCallorSendMessages"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    .line 319
    .restart local v1    # "isScreenCapture":I
    .restart local v2    # "isScreenCaptureEnabled":Ljava/lang/Boolean;
    .restart local v3    # "onInteractionConrol":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 320
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "surface_palm_swipe"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_d
    move v6, v8

    goto :goto_4

    .line 324
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    goto/16 :goto_2

    .line 331
    .end local v1    # "isScreenCapture":I
    .end local v2    # "isScreenCaptureEnabled":Ljava/lang/Boolean;
    .end local v3    # "onInteractionConrol":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 332
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_10

    .line 333
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 334
    iput-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    .line 339
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 336
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v5, 0x1

    .line 337
    .local v5, "switchState":Z
    :goto_6
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_5

    .line 336
    .end local v5    # "switchState":Z
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "switchState":Z
    goto :goto_6

    .line 340
    .end local v5    # "switchState":Z
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "multi_window_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_13

    .line 342
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 343
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 348
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "multi_window_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 345
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 346
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_14

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_7

    :cond_14
    move v6, v8

    goto :goto_8

    .line 349
    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "direct_share"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 350
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 351
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_16

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_3

    :cond_16
    move v6, v8

    goto :goto_9

    .line 352
    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 353
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 354
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_18

    move v6, v7

    :goto_a
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_3

    :cond_18
    move v6, v8

    goto :goto_a

    .line 356
    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1a

    .line 357
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 358
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 363
    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 360
    :cond_1a
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 361
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v7

    :goto_c
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_b

    :cond_1b
    move v6, v8

    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 422
    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 434
    const-string/jumbo v1, "UsefulFeatureHub"

    const-string/jumbo v3, "onSwitchChanged"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 436
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 437
    .local v0, "value":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 438
    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 438
    if-eqz v1, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V

    .line 433
    :cond_0
    :goto_2
    return-void

    .end local v0    # "value":I
    :cond_1
    move v1, v2

    .line 435
    goto :goto_0

    .line 436
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_1

    .line 441
    :cond_3
    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V

    goto :goto_2

    .line 444
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto :goto_2

    .line 447
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_6

    .line 450
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 455
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_popup_view_shortcut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_2

    .line 460
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "smart_capture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 461
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "finger_magnifier"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->smartCaptureDisablePopup()V

    goto/16 :goto_2

    .line 464
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "enable_smart_capture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 466
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "swipe_to_call_or_send_messages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_2

    .line 470
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_2
.end method
