.class public Lcom/samsung/android/share/SShareMoreActions;
.super Ljava/lang/Object;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareMoreActions$ActionItem;,
        Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareMoreActions"


# instance fields
.field private arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private bottomPanelExpaned:Z

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mBixby:Lcom/samsung/android/share/SShareBixby;

.field private mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

.field private mBottomPanel:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mEnabledShowBtnBg:Z

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridMoreActions:Landroid/widget/GridView;

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mSharePanelVisibleHeight:I

.field private mSupportEnhancedMoreActions:Z

.field private mWindow:Landroid/view/Window;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareMoreActions;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/share/SShareMoreActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/share/SShareMoreActions;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F

    return p1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/view/Window;Ljava/lang/String;Lcom/samsung/android/share/SShareBixby;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "window"    # Landroid/view/Window;
    .param p5, "referrer"    # Ljava/lang/String;
    .param p6, "bixby"    # Lcom/samsung/android/share/SShareBixby;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->bottomPanelExpaned:Z

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 56
    iput v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    .line 66
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    .line 68
    iput-object p4, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 70
    iput-object p5, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/samsung/android/share/SShareMoreActions;->mBixby:Lcom/samsung/android/share/SShareBixby;

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 77
    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    .line 65
    :cond_0
    return-void
.end method

.method private checkAPConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 293
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 294
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 295
    .local v1, "ni_wifi":Landroid/net/NetworkInfo;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 297
    .local v2, "ni_wifiDirect":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 299
    :cond_0
    return v5

    .line 298
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    .line 301
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private checkScreenMirroringRunning()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 317
    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 319
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 321
    :cond_0
    return v3

    .line 323
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkScreenSharingCondition()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    return v0

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v2}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v2}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenMirroringRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method private getSharePanelVisibieHeight()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    return v0
.end method

.method private isKnoxMode()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 11
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    const/16 v10, 0x68

    const/16 v9, 0x67

    const/16 v8, 0x65

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 87
    if-nez p1, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "isAPConnected":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkAPConnection()Z

    move-result v1

    .line 96
    .local v1, "isAPConnected":Z
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getSupportEnhancedMoreActions()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 97
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 99
    .local v2, "maxColumnsMoreActions":I
    const-string/jumbo v3, "SShareMoreActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAPConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    const-string/jumbo v5, " mSupportEnhancedMoreActions = "

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    iget-boolean v5, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    const-string/jumbo v5, " maxColumnsMoreActions = "

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    .line 104
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    .line 108
    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v3, :cond_6

    .line 109
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 110
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x108080a

    invoke-direct {v0, v10, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 111
    .local v0, "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080809

    invoke-direct {v0, v9, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 115
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getChangePlayerEnable()I

    move-result v3

    if-ne v3, v6, :cond_3

    if-eqz v1, :cond_3

    .line 118
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080b07

    invoke-direct {v0, v8, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 119
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_3
    :goto_0
    new-instance v3, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    const v6, 0x1090104

    invoke-direct {v3, p0, v4, v6, v5}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;-><init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    .line 145
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    const v4, 0x10204c4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    .line 147
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 148
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 154
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 86
    :cond_5
    return-void

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getChangePlayerEnable()I

    move-result v3

    if-ne v3, v6, :cond_7

    if-eqz v1, :cond_7

    .line 123
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080b07

    invoke-direct {v0, v8, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 124
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenMirroringEnable()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 127
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    const v5, 0x108070a

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 128
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 131
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const-string/jumbo v3, "Smart View"

    const v4, 0x108070a

    invoke-direct {v0, v9, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 132
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 135
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10806c7

    invoke-direct {v0, v10, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 136
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 139
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    const v5, 0x1080691

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 140
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setSharePanelVisibleHeight(I)V
    .locals 0
    .param p1, "pHeight"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    .line 329
    return-void
.end method

.method public startAction(ILandroid/content/Intent;Landroid/view/View;)V
    .locals 9
    .param p1, "actionId"    # I
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "visibleView"    # Landroid/view/View;

    .prologue
    .line 175
    if-eqz p3, :cond_1

    .line 176
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/share/SShareMoreActions;->setSharePanelVisibleHeight(I)V

    .line 182
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v6}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    new-instance v4, Lcom/samsung/android/share/SShareLogging;

    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, p2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 186
    .local v4, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    packed-switch p1, :pswitch_data_0

    .line 203
    const-string/jumbo v0, "Wrong ID"

    .line 208
    .local v0, "detailInfo":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "MORE"

    invoke-virtual {v4, v6, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 172
    :goto_2
    return-void

    .line 178
    :cond_1
    const-string/jumbo v6, "SShareMoreActions"

    const-string/jumbo v7, "mVisibleArea is null !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .restart local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_0
    const-string/jumbo v0, "Change Player"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    .line 191
    .end local v0    # "detailInfo":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Screen Mirroring"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v0    # "detailInfo":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "Smart View"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    .line 197
    .end local v0    # "detailInfo":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "Nearby sharing"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    .line 200
    .end local v0    # "detailInfo":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "Print"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_1

    .line 214
    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_5
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 280
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "SShareMoreActions"

    const-string/jumbo v7, "MoreActions : ActivityNotFoundException !!! "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 220
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_6
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mBixby:Lcom/samsung/android/share/SShareBixby;

    if-eqz v6, :cond_2

    .line 221
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mBixby:Lcom/samsung/android/share/SShareBixby;

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/share/SShareBixby;->sendAppSelectionForBixby(Ljava/lang/String;)V

    .line 223
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "show_dialog_once"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    const-string/jumbo v6, "tag_write_if_success"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v6, "more_actions_screen_sharing_mode"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v6, "more_actions_knox_state"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->isKnoxMode()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 235
    const/high16 v6, 0x14800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 282
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SShareMoreActions"

    const-string/jumbo v7, "MoreActions : Exception !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mBixby:Lcom/samsung/android/share/SShareBixby;

    if-eqz v6, :cond_3

    .line 243
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mBixby:Lcom/samsung/android/share/SShareBixby;

    const-string/jumbo v7, "com.samsung.android.oneconnect"

    invoke-virtual {v6, v7}, Lcom/samsung/android/share/SShareBixby;->sendAppSelectionForBixby(Ljava/lang/String;)V

    .line 245
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v6, p2}, Lcom/samsung/android/share/SShareCommon;->isIntentFileUriScheme(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 247
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.oneconnect.action.DEVICE_PICKER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.oneconnect"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string/jumbo v6, "*/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    :goto_3
    const-string/jumbo v6, "extra_height"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->getSharePanelVisibieHeight()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-boolean v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v6, :cond_4

    .line 259
    const-string/jumbo v6, "more_actions_print"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string/jumbo v6, "more_actions_quick_connect"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :cond_4
    const-string/jumbo v6, "SShareMoreActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mFeature.getPrintEnable()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 264
    const-string/jumbo v8, "mFeature.getQuickConnectEnable()= "

    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 264
    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v8

    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 252
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 253
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.oneconnect"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v6, "com.samsung.android.oneconnect.action.DEVICE_PICKER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 269
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_8
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 270
    .local v5, "stream":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 186
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public startMoreActions(ILandroid/content/Intent;Landroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "visibleView"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->getItemActionId(I)I

    move-result v0

    .line 166
    .local v0, "actionID":I
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/share/SShareMoreActions;->startAction(ILandroid/content/Intent;Landroid/view/View;)V

    .line 162
    return-void
.end method
