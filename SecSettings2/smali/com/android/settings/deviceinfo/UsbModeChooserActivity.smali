.class public Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I

.field public static final DEFAULT_MODES_VZW:[I

.field private static mContainerLayout:Landroid/widget/LinearLayout;

.field private static mIsSupportPowerRole:Z


# instance fields
.field private mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mCurrent:I

.field private mCurrentConnectionMode:I

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLinkToHelp:Landroid/widget/TextView;

.field private mPortPowerRole:I

.field private mPrevConnectedState:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectionSupplyingPower:Z

.field private mThread:Ljava/lang/Thread;

.field private mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0
    .param p1, "currentUsbMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->checkedRadioButton(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->finishDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x2

    .line 68
    const/4 v1, 0x4

    .line 71
    const/4 v2, 0x1

    .line 66
    filled-new-array {v0, v1, v4, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    .line 74
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    .line 100
    sput-boolean v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    .line 62
    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x8
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    .line 99
    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    .line 110
    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method private checkedRadioButton(I)V
    .locals 5
    .param p1, "currentUsbMode"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "currentIdx":I
    :try_start_0
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 483
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    .line 485
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 489
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_1
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 504
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 493
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    :try_start_1
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 495
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_5

    .line 496
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 500
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 493
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 498
    :cond_5
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private finishDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 512
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 509
    :cond_0
    return-void
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 517
    packed-switch p0, :pswitch_data_0

    .line 532
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 519
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0501

    return v0

    .line 520
    :cond_0
    const v0, 0x7f0b0503

    return v0

    .line 522
    :pswitch_2
    const v0, 0x7f0b19e1

    return v0

    .line 524
    :pswitch_3
    const v0, 0x7f0b0505

    return v0

    .line 526
    :pswitch_4
    const v0, 0x7f0b19e9

    return v0

    .line 528
    :pswitch_5
    const v0, 0x7f0b0507

    return v0

    .line 530
    :pswitch_6
    const v0, 0x7f0b0509

    return v0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getSummaryVzw(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 555
    packed-switch p0, :pswitch_data_0

    .line 570
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 557
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0501

    return v0

    .line 558
    :cond_0
    const v0, 0x7f0b0502

    return v0

    .line 560
    :pswitch_2
    const v0, 0x7f0b19e1

    return v0

    .line 562
    :pswitch_3
    const v0, 0x7f0b0504

    return v0

    .line 564
    :pswitch_4
    const v0, 0x7f0b19e8

    return v0

    .line 566
    :pswitch_5
    const v0, 0x7f0b0506

    return v0

    .line 568
    :pswitch_6
    const v0, 0x7f0b0509

    return v0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 536
    packed-switch p0, :pswitch_data_0

    .line 551
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 538
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b19ae

    return v0

    .line 539
    :cond_0
    const v0, 0x7f0b19de

    return v0

    .line 541
    :pswitch_2
    const v0, 0x7f0b19e0

    return v0

    .line 543
    :pswitch_3
    const v0, 0x7f0b19e3

    return v0

    .line 545
    :pswitch_4
    const v0, 0x7f0b19e6

    return v0

    .line 547
    :pswitch_5
    const v0, 0x7f0b19eb

    return v0

    .line 549
    :pswitch_6
    const v0, 0x7f0b0508

    return v0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitleVzw(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 574
    packed-switch p0, :pswitch_data_0

    .line 589
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 576
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b19ae

    return v0

    .line 577
    :cond_0
    const v0, 0x7f0b19de

    return v0

    .line 579
    :pswitch_2
    const v0, 0x7f0b19e0

    return v0

    .line 581
    :pswitch_3
    const v0, 0x7f0b19e2

    return v0

    .line 583
    :pswitch_4
    const v0, 0x7f0b19e5

    return v0

    .line 585
    :pswitch_5
    const v0, 0x7f0b19ea

    return v0

    .line 587
    :pswitch_6
    const v0, 0x7f0b0508

    return v0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;Z)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;
    .param p4, "disallowedByAdmin"    # Z

    .prologue
    .line 399
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04024d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 401
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 402
    .local v1, "titleView":Landroid/widget/TextView;
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 405
    .local v0, "summaryView":Landroid/widget/TextView;
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitleVzw(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 407
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummaryVzw(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 414
    :goto_0
    if-eqz p4, :cond_0

    .line 415
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_2

    .line 416
    invoke-direct {p0, v2, v1, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 422
    :cond_0
    new-instance v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;

    invoke-direct {v3, p0, p4, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    .line 462
    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 463
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    return-void

    .line 409
    :cond_1
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 410
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 418
    :cond_2
    return-void
.end method

.method private setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "titleView"    # Landroid/widget/TextView;
    .param p3, "summaryView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 469
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    const v1, 0x7f110471

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 472
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 473
    const/high16 v2, 0x7f0d0000

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 472
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 466
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkSmartSwtichTransfer()Z
    .locals 6

    .prologue
    .line 593
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 596
    .local v0, "actMng":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 598
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rap$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 600
    .local v2, "rap":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.easyMover.service.OtgTransferStatusCheckService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    const-string/jumbo v4, "UsbModeChooserActivity"

    const-string/jumbo v5, "checkSmartSwtichTransfer - return true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v4, 0x1

    return v4

    .line 605
    .end local v2    # "rap":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const-string/jumbo v4, "UsbModeChooserActivity"

    const-string/jumbo v5, "checkSmartSwtichTransfer - return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v4, 0x0

    return v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 611
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "helphub:category"

    const-string/jumbo v3, "USERMAN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 610
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    .line 617
    .local v0, "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    iget-boolean v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v2, :cond_0

    .line 618
    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 258
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    .line 260
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    const v5, 0x7f0b19ed

    .line 260
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 262
    const v5, 0x7f040315

    .line 260
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 263
    new-instance v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$5;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$5;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    .line 260
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 269
    new-instance v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$6;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$6;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    const v6, 0x7f0b107a

    .line 260
    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 276
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 278
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v5, 0x7f110598

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 281
    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 280
    invoke-static {p0, v2, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 282
    new-instance v2, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    .line 284
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    .line 285
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 287
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v2, v1

    iget v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v6, v6, v1

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_2
    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 290
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v8, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v7

    .line 289
    invoke-direct {p0, v5, v2, v6, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    .line 294
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 295
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 297
    :cond_5
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v2, v1

    iget v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v6, v6, v1

    if-ne v2, v6, :cond_6

    move v2, v3

    :goto_5
    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 298
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v8, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v7

    .line 297
    invoke-direct {p0, v5, v2, v6, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5

    .line 305
    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x7f1106f7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    .line 306
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const v4, 0x7f0b043a

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const-string/jumbo v4, "</u>"

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 366
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 376
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 392
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    .line 363
    :cond_3
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 378
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->getSupportedPowerRole()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    .line 335
    .local v0, "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->isSupportPowerRole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    .line 335
    if-nez v1, :cond_0

    .line 336
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 335
    if-eqz v1, :cond_1

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbBackend;->isSupportPowerRole()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    .line 322
    sget-boolean v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 348
    sget-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
