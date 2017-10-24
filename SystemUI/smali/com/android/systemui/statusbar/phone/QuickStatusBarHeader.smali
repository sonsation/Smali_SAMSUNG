.class public Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;
.super Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;
    }
.end annotation


# instance fields
.field private isPopupShow:Z

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mBadgeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeBackground:Landroid/widget/LinearLayout;

.field private mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBadgeText:Landroid/widget/TextView;

.field private mBrightnessMenu:Landroid/view/MenuItem;

.field private mContactUsMenu:Landroid/view/MenuItem;

.field private mDateScaleFactor:F

.field private mDateSizeAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mDateTimeAlarmGroup:Landroid/view/ViewGroup;

.field private mDateTimeAlarmTranslation:F

.field private mDateTimeDivider:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/ViewGroup;

.field private mDateTimeTranslation:F

.field private mDeskMode:Z

.field private mEdit:Landroid/view/MenuItem;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mGearTranslation:F

.field private mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsSupportContactUs:I

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

.field private mListening:Z

.field private mMoreButton:Landroid/widget/ImageButton;

.field protected mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field protected mMoreTranslation:F

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mScreenGrid:Landroid/view/MenuItem;

.field private mSettingScaleFactor:F

.field protected mSettingTranslation:F

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsBadgeCount:I

.field private mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

.field private mSettingsButton:Landroid/widget/ImageButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setBrightnessControllerOnTop()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    .line 177
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    .line 188
    return-void
.end method

.method private setBrightnessControllerOnTop()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 685
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 687
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 692
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QS21"

    .line 694
    const-string/jumbo v4, "brightness_on_top"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 693
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    :cond_1
    return-void

    .line 689
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 690
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    const/4 v2, 0x1

    .line 701
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 700
    return-void
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 536
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 4

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mGearTranslation:F

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreTranslation:F

    .line 305
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 306
    const v3, 0x7f0d021d

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeTranslation:F

    .line 307
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 308
    const v3, 0x7f0d021e

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmTranslation:F

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 310
    const v3, 0x7f0d021f

    .line 309
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 311
    .local v0, "dateCollapsedSize":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 312
    const v3, 0x7f0d0220

    .line 311
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 313
    .local v1, "dateExpandedSize":F
    div-float v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateScaleFactor:F

    .line 329
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateSizeAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->createDivider()V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsAnimator()V

    .line 293
    return-void
.end method

.method private updateSettingsBadgeCount()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    .line 920
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1()V
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setClickable(Z)V

    .line 0
    return-void
.end method

.method protected createDivider()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 272
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 274
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    int-to-float v1, v5

    .line 275
    .local v1, "dividerHeight":F
    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 276
    .local v0, "IdividerHeight":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0262

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 277
    .local v3, "dividerWidth":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0263

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 279
    .local v2, "dividerTopMargin":I
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4, v7, v2, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 281
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 282
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_1

    .line 283
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d03c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 287
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 288
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .end local v0    # "IdividerHeight":I
    .end local v1    # "dividerHeight":F
    .end local v2    # "dividerTopMargin":I
    .end local v3    # "dividerWidth":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void

    .line 285
    .restart local v0    # "IdividerHeight":I
    .restart local v1    # "dividerHeight":F
    .restart local v2    # "dividerTopMargin":I
    .restart local v3    # "dividerWidth":I
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method public dismissPopupMenu()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->dismissGridPopup()V

    .line 675
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 815
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 816
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 817
    .local v1, "up":Z
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 818
    const-string/jumbo v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KEYCODE_DPAD_DOWN action_down = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v2, :cond_6

    .line 820
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->hasBarOnHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130328

    if-eq v2, v3, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130327

    if-ne v2, v3, :cond_1

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    .line 838
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 815
    .end local v0    # "down":Z
    .end local v1    # "up":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 816
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "up":Z
    goto :goto_1

    .line 826
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f13012c

    if-eq v2, v3, :cond_5

    .line 827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f13012f

    if-ne v2, v3, :cond_1

    .line 828
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_2

    .line 832
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/qs/QSIconView;

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 750
    if-nez p2, :cond_0

    .line 751
    return v4

    .line 754
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    const-string/jumbo v1, "QuickStatusBarHeader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Installed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return v5

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "QuickStatusBarHeader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOT Installed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return v4
.end method

.method public isPopupShow()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    return v0
.end method

.method public isSupportContactUs(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 765
    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 766
    const-string/jumbo v2, "com.samsung.android.voc"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 767
    iput v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    .line 769
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 770
    const-string/jumbo v3, "com.samsung.android.voc"

    const/4 v4, 0x0

    .line 769
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 771
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0xa220268

    if-ge v2, v3, :cond_0

    .line 772
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    if-ne v2, v6, :cond_2

    .line 782
    return v6

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    goto :goto_0

    .line 778
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    goto :goto_0

    .line 784
    :cond_2
    const-string/jumbo v2, "QuickStatusBarHeader"

    const-string/jumbo v3, "not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v5
.end method

.method public launchContactUsApp(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 789
    const-string/jumbo v0, "3l25p17305"

    .line 790
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v1, "Quick_Panel"

    .line 791
    .local v1, "appName":Ljava/lang/String;
    const-string/jumbo v2, "com.android.systemui.quickpanel"

    .line 792
    .local v2, "appPackageName":Ljava/lang/String;
    const-string/jumbo v4, "ask"

    .line 793
    .local v4, "feedbackType":Ljava/lang/String;
    const-string/jumbo v6, "voc://view/contactUs"

    .line 794
    .local v6, "url":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 795
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "packageName"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    const-string/jumbo v7, "appId"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string/jumbo v7, "appName"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string/jumbo v7, "feedbackType"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string/jumbo v7, "faqUrl"

    const-string/jumbo v8, "http://www.samsung.com"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 802
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v8, 0x1

    invoke-interface {v7, v5, v8}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v3

    .line 805
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "QuickStatusBarHeader"

    const-string/jumbo v8, "do not find samsung members packcage"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 457
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onAttachedToWindow()V

    .line 460
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    .line 466
    const-wide/16 v2, 0x7d0

    .line 460
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->startSettingsActivity()V

    .line 582
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP01"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->showQSPopupMenu()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->dismissPopupMenu()V

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    .line 259
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setListening(Z)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->remListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 475
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onDetachedFromWindow()V

    .line 471
    return-void
.end method

.method public onEmergencyModeChanged()V
    .locals 0

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsAnimator()V

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    .line 743
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 194
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onFinishInflate()V

    .line 199
    const v1, 0x7f130338

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    const v4, 0x7f1303e7

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v1, 0x7f130339

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120022

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 207
    .local v0, "showDate":Z
    const v1, 0x7f13033b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .end local v0    # "showDate":Z
    :cond_0
    const v1, 0x7f13033c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 216
    const v1, 0x7f13012c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Landroid/widget/ImageButton;

    .line 217
    const v1, 0x7f13012b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f13012f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v1, 0x7f1301f6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v3, 0x7f1301f7

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 242
    const v1, 0x7f13033a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    .line 243
    const v1, 0x7f1303e5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v3, 0x7f13012d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v3, 0x7f13012e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    .line 248
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    .line 255
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    return-void

    .restart local v0    # "showDate":Z
    :cond_2
    move v1, v3

    .line 207
    goto/16 :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 843
    if-eqz p2, :cond_0

    .line 844
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->requestFocus()Z

    goto :goto_0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 417
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onRtlPropertiesChanged(I)V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    .line 266
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    .line 737
    return-void
.end method

.method public registerBadgeCountUpdateReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 908
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsBadgeCount()V

    .line 878
    :cond_0
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 545
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 711
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 1
    .param p1, "qsPanelCallback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 721
    :cond_0
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 727
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 728
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 729
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    .line 730
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    .line 726
    :cond_0
    return-void

    .line 727
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    .line 410
    return-void
.end method

.method public setExpansion(F)V
    .locals 1
    .param p1, "headerExpansionFraction"    # F

    .prologue
    .line 437
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpansionAmount:F

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 436
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 495
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 498
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateListeners()V

    .line 493
    return-void
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0
    .param p1, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 706
    return-void
.end method

.method public setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    .line 809
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 552
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDeskMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDeskMode:Z

    .line 550
    :cond_1
    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 717
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 716
    return-void
.end method

.method public setupHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setHeaderView(Landroid/view/View;)V

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 566
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 569
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 570
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNextAlarmController()Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    .line 573
    .local v0, "isAPhone":Z
    if-eqz v0, :cond_1

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 559
    :cond_1
    return-void
.end method

.method protected showQSPopupMenu()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-direct {v1, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    .line 601
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isQuickSettingEditEnabled()Z

    move-result v1

    .line 600
    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    .line 605
    .local v0, "contactInstalled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const/high16 v4, 0x7f150000

    invoke-virtual {v1, v4}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v4, 0x7f13046f

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/MenuItem;

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v4, 0x7f130470

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    .line 609
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDeskMode:Z

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v4, 0x7f130471

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    .line 619
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v5, "brightness_on_top"

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 621
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 623
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v3, 0x7f130472

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContactUsMenu:Landroid/view/MenuItem;

    .line 624
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContactUsMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    .end local v0    # "contactInstalled":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setGravity(I)V

    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 668
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    .line 598
    return-void

    .restart local v0    # "contactInstalled":Z
    :cond_3
    move v1, v3

    .line 619
    goto :goto_0
.end method

.method public unregisterBadgeCountUpdateReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 917
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    .line 912
    return-void
.end method

.method public updateBadgeState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 854
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    return-void

    .line 856
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    if-lez v3, :cond_3

    .line 857
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 858
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    const-string/jumbo v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0440

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 861
    .local v1, "defaultWidth":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDeskMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0441

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 866
    :cond_1
    :goto_0
    int-to-float v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 867
    const v6, 0x7f0d043f

    .line 866
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 869
    .local v0, "badgeWidth":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 870
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 871
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 872
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    .end local v0    # "badgeWidth":I
    .end local v1    # "defaultWidth":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    return-void

    .line 863
    .restart local v1    # "defaultWidth":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 874
    .end local v1    # "defaultWidth":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateEverything()V
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    .line 503
    return-void
.end method

.method protected updateSettingsAnimator()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 341
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 342
    const v8, 0x7f0d03c7

    .line 341
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 343
    .local v3, "settingCollapsedSize":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 344
    const v8, 0x7f0d03c8

    .line 343
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 345
    .local v4, "settingExpandedSize":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isLayoutRtl()Z

    move-result v2

    .line 347
    .local v2, "rtlState":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d03bd

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    .line 349
    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    neg-float v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    .line 351
    :cond_0
    div-float v5, v4, v3

    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingScaleFactor:F

    .line 353
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 355
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v10, "translationX"

    .line 353
    new-array v11, v13, [F

    .line 355
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    aput v5, v11, v7

    aput v6, v11, v12

    .line 353
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 356
    .local v0, "builder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v5, :cond_1

    .line 357
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v9, "translationX"

    new-array v10, v13, [F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    aput v5, v10, v7

    aput v6, v10, v12

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    .line 375
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 376
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    const-string/jumbo v9, "translationX"

    .line 375
    new-array v10, v13, [F

    .line 376
    iget v11, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreTranslation:F

    aput v11, v10, v7

    aput v6, v10, v12

    .line 375
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 377
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    const-string/jumbo v9, "alpha"

    .line 375
    new-array v10, v13, [F

    .line 377
    aput v6, v10, v7

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v10, v12

    .line 375
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 378
    const v6, 0x3f333333    # 0.7f

    .line 375
    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    .line 382
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isLayoutRtl()Z

    move-result v1

    .line 384
    .local v1, "isRtl":Z
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-nez v5, :cond_5

    .line 385
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 340
    .end local v1    # "isRtl":Z
    :cond_2
    :goto_2
    return-void

    .line 355
    .end local v0    # "builder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    goto :goto_0

    .line 357
    .restart local v0    # "builder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    goto :goto_1

    .line 394
    .restart local v1    # "isRtl":Z
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    :goto_3
    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method

.method protected updateVisibilities()V
    .locals 7

    .prologue
    const v6, 0x7f130337

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 521
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 523
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 522
    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 526
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    .line 528
    .local v2, "isMumAllowed":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    .line 529
    .local v1, "isEmergencyMode":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    .line 530
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v3, :cond_2

    .line 531
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_8

    :cond_1
    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 533
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    const/16 v4, 0x8

    :cond_3
    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 513
    return-void

    .end local v1    # "isEmergencyMode":Z
    .end local v2    # "isMumAllowed":Z
    :cond_4
    move v3, v5

    .line 523
    goto :goto_0

    .line 526
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "isMumAllowed":Z
    goto :goto_1

    .line 525
    .end local v2    # "isMumAllowed":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isMumAllowed":Z
    goto :goto_1

    .line 529
    .restart local v1    # "isEmergencyMode":Z
    :cond_7
    const/4 v0, 0x0

    .local v0, "isCoverState":Z
    goto :goto_2

    .line 531
    .end local v0    # "isCoverState":Z
    :cond_8
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v3, v4

    .line 532
    goto :goto_3

    .line 533
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-nez v6, :cond_3

    move v4, v5

    goto :goto_4
.end method
