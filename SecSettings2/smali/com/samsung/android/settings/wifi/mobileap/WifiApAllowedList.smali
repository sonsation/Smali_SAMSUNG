.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    }
.end annotation


# static fields
.field private static mDeleteClicked:Z


# instance fields
.field private final ADD_TO_ADAPTER:I

.field private final DELETE_ONE_ITEM:I

.field private final TAG:Ljava/lang/String;

.field private isEnabledShowBtnBg:Z

.field private isLand:Z

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mAllSelectionMode:I

.field private mAllowAll:Z

.field private mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

.field private mAllowedListContainer:Landroid/widget/ListView;

.field private mBubbleLandscape:Landroid/widget/RelativeLayout;

.field private mBubblePortrait:Landroid/widget/RelativeLayout;

.field private mCheckBoxMarginLeft:I

.field private mCheckBoxMarginRight:I

.field private mCheckBoxWidthForDeleteAnimation:I

.field private mClickedPos:I

.field private mCount:Landroid/widget/TextView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

.field private mDialogType:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDragSelectedUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsReset:Z

.field private mIsTablet:Z

.field private mIsZeroSelected:Z

.field private mMultiSelectionMode:Z

.field private mPrevMAC:Ljava/lang/String;

.field private mPrevName:Ljava/lang/String;

.field private mProgressCircle:Landroid/widget/ProgressBar;

.field private mSPenSelect:Z

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSelectAllFrame:Landroid/widget/FrameLayout;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchPref:Landroid/widget/LinearLayout;

.field private mSwitchPrefListener:Landroid/view/View$OnClickListener;

.field private mWifiApDeviceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private oneItemDeleteAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->handleWifiApState(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->insertLog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "mWLDialog"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .param p3, "pos"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 106
    const-string/jumbo v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->ADD_TO_ADAPTER:I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->DELETE_ONE_ITEM:I

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 148
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 149
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 156
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    .line 158
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    .line 160
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 171
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    .line 172
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    .line 104
    return-void
.end method

.method private changeActionBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 571
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setCustomActionBar()V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 579
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 581
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 582
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 583
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private changeAllowPolicy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 490
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 496
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    .line 488
    :cond_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_0
.end method

.method private changeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 558
    :cond_1
    return-void
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 439
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 440
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 441
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 442
    .local v1, "num":I
    const-string/jumbo v2, "WifiApAllowedList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 444
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    if-lez v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDisconnectDialog()V

    .line 438
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 503
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 504
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 505
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 506
    .local v0, "mRvfMode":I
    return v0
.end method

.method private handleWifiApState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1036
    const-string/jumbo v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiApState.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    packed-switch p1, :pswitch_data_0

    .line 1073
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1035
    :goto_0
    return-void

    .line 1040
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1047
    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1055
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1063
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1066
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1070
    :pswitch_3
    const-string/jumbo v0, "WifiApAllowedList"

    const-string/jumbo v1, "WIFI_AP_STATE_FAILED case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 623
    .local v6, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 624
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 625
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 626
    const v1, 0x7f0b0db8

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 627
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 630
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 631
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 621
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    return-void
.end method

.method private initSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v1, :cond_1

    .line 425
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private insertLog()V
    .locals 4

    .prologue
    .line 412
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 413
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHOM"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string/jumbo v3, "extra"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ALL"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 411
    return-void

    .line 416
    :cond_0
    const-string/jumbo v2, "ONLY"

    goto :goto_0
.end method

.method private isSupportSpen()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 399
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v2, 0x1

    return v2

    .line 403
    :cond_0
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v4

    .line 407
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen false - context null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v4
.end method

.method private refreshAdapter(I)V
    .locals 4
    .param p1, "option"    # I

    .prologue
    const/4 v3, 0x1

    .line 544
    if-ne p1, v3, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeScreen()V

    .line 546
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    .line 547
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 548
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 549
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v0

    .line 553
    .local v0, "toDelete":[Ljava/lang/Boolean;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    .line 554
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 510
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    .line 511
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 512
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 513
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 515
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 509
    return-void
.end method

.method private setCustomActionBar()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 589
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 590
    .local v6, "actionBar":Landroid/app/ActionBar;
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v1, :cond_3

    .line 591
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 595
    :goto_0
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 596
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 597
    const-string/jumbo v1, ""

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 598
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 601
    .local v7, "parent":Landroid/widget/Toolbar;
    invoke-virtual {v7, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 603
    .end local v7    # "parent":Landroid/widget/Toolbar;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 606
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v1, v4, v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a04bc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 611
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 610
    add-int v2, v1, v4

    .line 612
    .local v2, "divider_inset_size":I
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 613
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 614
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 588
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v2    # "divider_inset_size":I
    :cond_2
    return-void

    .line 593
    :cond_3
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method private showDisconnectDialog()V
    .locals 4

    .prologue
    .line 453
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0df0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0df5

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 456
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f0b045c

    .line 454
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 463
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f0b107a

    .line 454
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 474
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 454
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 452
    return-void
.end method

.method private showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "mWLDialog"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .param p3, "pos"    # I

    .prologue
    .line 1028
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 1029
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 1030
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    .line 1031
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    .line 1032
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 1027
    return-void
.end method

.method private showFadeOutAnimation(Z)V
    .locals 10
    .param p1, "isLand"    # Z

    .prologue
    const-wide/16 v8, 0x5dc

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 681
    const-string/jumbo v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showFadeOutAnimation.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-nez p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 689
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 685
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 680
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 706
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private updateActionBarCount(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "toDisplay":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 1001
    if-nez p1, :cond_2

    .line 1002
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    const v2, 0x7f0b1001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1003
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 1004
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1006
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1007
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1024
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 997
    return-void

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1011
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1012
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_3

    .line 1013
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1015
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1019
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1021
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1022
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 975
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 976
    .local v1, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 992
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 993
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, "Updated device successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v5

    .line 977
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v5, v2, :cond_0

    .line 978
    return v4

    .line 983
    :cond_3
    invoke-virtual {v1, p2, p1}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 984
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v0

    .line 987
    .local v0, "ret":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 988
    return v4
.end method

.method private updateEmptyView(Z)V
    .locals 3
    .param p1, "isLand"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 671
    :cond_0
    if-eqz p1, :cond_1

    .line 672
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 519
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v6, :cond_1

    .line 520
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 521
    .local v2, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 522
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v1, :cond_2

    .line 523
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 525
    .local v3, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v0, "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    .end local v0    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .end local v3    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    .line 518
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v2    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_1
    :goto_1
    return-void

    .line 530
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v2    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 531
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 532
    const-string/jumbo v4, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 534
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 535
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 537
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showFadeOutAnimation(Z)V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 530
    goto :goto_2
.end method


# virtual methods
.method public deleteFromListAdapter([Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "myArr"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 745
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 746
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v0, "b":Landroid/os/Bundle;
    array-length v8, p1

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 749
    aget-object v8, p1, v1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 750
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    .line 751
    .local v3, "temp":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 752
    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 754
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 755
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 756
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v8, v6, :cond_0

    .line 757
    const/4 v8, 0x4

    iput v8, v2, Landroid/os/Message;->what:I

    .line 758
    const-string/jumbo v8, "mac"

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 760
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 763
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 748
    .end local v3    # "temp":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 766
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->initArr()V

    .line 767
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 768
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->clearList()V

    .line 769
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 770
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 772
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 744
    return-void

    :cond_4
    move v6, v7

    .line 769
    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f110761

    const v10, 0x7f110760

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 191
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 192
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 193
    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "show_button_background"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    .line 196
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "TMO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "NEWCO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f02049d

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 200
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 201
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04033a

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 202
    .local v4, "view":Landroid/widget/LinearLayout;
    const v5, 0x7f110763

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    .line 203
    const v5, 0x7f110764

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    .line 204
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    .line 205
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    .line 206
    const v5, 0x7f110762

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    .line 207
    const v5, 0x7f11075c

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    .line 208
    const v5, 0x7f11075f

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    .line 209
    const v5, 0x7f11075e

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    .line 211
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 213
    if-eqz p1, :cond_2

    .line 214
    const-string/jumbo v5, "mPrevName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    .line 215
    const-string/jumbo v5, "mPrevMAC"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    .line 216
    const-string/jumbo v5, "mClickedPos"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 219
    :cond_2
    const-string/jumbo v5, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 220
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 221
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_3
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 224
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isSupportSpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 229
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    .line 230
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    .line 280
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v2

    .line 281
    .local v2, "currentView":Landroid/view/View;
    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2    # "currentView":Landroid/view/View;
    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 282
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 284
    const-string/jumbo v5, "device_list_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

    .line 286
    const v5, 0x7f04033e

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    .line 287
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f0b0db8

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 288
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 289
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110770

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 290
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110772

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 291
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110771

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    .line 292
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110774

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    .line 297
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    .line 300
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 319
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 342
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 356
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    .line 362
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_7

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initSwitch()V

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "attr":Landroid/util/AttributeSet;
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/settings/R$styleable;->AllowedListItemView:[I

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 372
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/16 v6, 0x4d

    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    .line 373
    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    .line 374
    const/4 v5, 0x2

    const/16 v6, 0x18

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/widget/LinearLayout;
    :cond_6
    move v5, v7

    .line 194
    goto/16 :goto_0

    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "view":Landroid/widget/LinearLayout;
    :cond_7
    move v6, v7

    .line 365
    goto :goto_1

    .line 375
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    :catchall_0
    move-exception v5

    .line 376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    throw v5
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    .line 916
    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "mac":Ljava/lang/String;
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, "name":Ljava/lang/String;
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    if-ne v6, v7, :cond_1

    .line 919
    packed-switch p2, :pswitch_data_0

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 921
    :pswitch_0
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 922
    .local v5, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 924
    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    .local v1, "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 926
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    .line 928
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 929
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x4d

    iput v6, v3, Landroid/os/Message;->what:I

    .line 930
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 931
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "feature"

    const-string/jumbo v7, "MHAD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string/jumbo v6, "extra"

    const-string/jumbo v7, "ADD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 934
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 935
    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    .line 938
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_3
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 941
    :pswitch_4
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    .end local v5    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 951
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 963
    :pswitch_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setName(Ljava/lang/String;)V

    .line 964
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setMac(Ljava/lang/String;)V

    .line 965
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    .line 966
    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    .line 953
    :pswitch_6
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 954
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .restart local v1    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 956
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 957
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    .line 959
    .end local v1    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    :cond_2
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    .line 960
    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto/16 :goto_0

    .line 919
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 922
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 951
    :pswitch_data_2
    .packed-switch -0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 721
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 722
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 732
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 720
    return-void

    :cond_0
    move v0, v1

    .line 722
    goto :goto_0

    .line 724
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    .line 725
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 726
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 183
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 180
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/high16 v4, 0x1040000

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 823
    if-ne p1, v0, :cond_0

    .line 824
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 825
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 826
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    .line 827
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 828
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    .local v6, "macWarnDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x1040014

    .line 829
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 831
    const v1, 0x7f0b0df7

    .line 829
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 832
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v2, 0x7f0b0434

    .line 829
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 837
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 829
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 841
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 842
    .end local v6    # "macWarnDialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 843
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 844
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 845
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    .line 846
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 847
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 848
    .local v7, "oneItemDeleteDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0b0df8

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 849
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v1, 0x7f0b1715

    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 855
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v7, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    .line 861
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 863
    .end local v7    # "oneItemDeleteDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    return-object v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    const v0, 0x7f0b1715

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 643
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 645
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_4

    .line 651
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_2

    .line 652
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v0, :cond_5

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 654
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_3

    .line 661
    const/4 v0, 0x2

    const v1, 0x7f0b0435

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 664
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 636
    return-void

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 649
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 656
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 657
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 907
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 908
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_0

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 910
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 905
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 777
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    .line 778
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 818
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 780
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v4

    :goto_0
    if-nez v4, :cond_3

    .line 781
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v4, :cond_2

    .line 787
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 788
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 789
    return v7

    :cond_1
    move v4, v3

    .line 780
    goto :goto_0

    .line 782
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v1

    .line 783
    .local v1, "toDelete":[Ljava/lang/Boolean;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    .line 784
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 785
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 798
    .end local v1    # "toDelete":[Ljava/lang/Boolean;
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 799
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    .line 801
    :cond_3
    return v7

    .line 791
    :cond_4
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 792
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 793
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    .line 794
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    .line 795
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    goto :goto_1

    .line 803
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-nez v4, :cond_8

    .line 804
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 816
    :cond_6
    :goto_2
    return v7

    .line 805
    :cond_7
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_2

    .line 807
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v4, v6, :cond_b

    .line 808
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    :cond_9
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 809
    :cond_a
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_2

    .line 812
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v3, 0x7f0b0df6

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 814
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 893
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 892
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 886
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 885
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 898
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 899
    const-string/jumbo v0, "mPrevName"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string/jumbo v0, "mPrevMAC"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string/jumbo v0, "mClickedPos"

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 897
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 382
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 383
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    return-void
.end method

.method public reloadWhiteList()V
    .locals 3

    .prologue
    .line 867
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 868
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 869
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 870
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 866
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "checkBox"    # Landroid/widget/CheckBox;
    .param p3, "startTimeMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 1089
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, "SelectAll CheckBox Animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1091
    const/4 v0, 0x0

    .line 1095
    .local v0, "fromX":I
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v2, v3

    neg-int v0, v2

    .line 1096
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1097
    .local v1, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1098
    invoke-virtual {v1, p3, p4}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 1099
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1100
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/ListView;J)V
    .locals 6
    .param p1, "lv"    # Landroid/widget/ListView;
    .param p2, "startTimeMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 1104
    const/4 v0, 0x0

    .line 1108
    .local v0, "fromX":I
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v2, v3

    neg-int v0, v2

    .line 1109
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setTransitionGroup(Z)V

    .line 1110
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1111
    .local v1, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1112
    invoke-virtual {v1, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 1113
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1115
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1103
    return-void
.end method

.method public showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 875
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    .line 876
    .local v3, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#ff"

    const-string/jumbo v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "color":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<font color="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    const-string/jumbo v7, "</font>"

    .line 878
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 879
    aput-object p2, v5, v8

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 878
    const v6, 0x7f0b0db2

    .line 877
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "msgAdd":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 881
    .local v2, "toastAdd":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 874
    return-void
.end method
