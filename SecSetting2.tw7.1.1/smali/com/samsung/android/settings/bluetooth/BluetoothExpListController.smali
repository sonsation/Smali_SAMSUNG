.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    }
.end annotation


# instance fields
.field private mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mNeedUpdateUi:Z

.field private mTempDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTempInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "localAdapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p4, "localManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 71
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 72
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    .line 88
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    .line 144
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    .line 146
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 147
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 143
    return-void
.end method

.method private isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b14e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I
    .locals 2
    .param p1, "selectedList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .param p2, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 334
    if-gez v0, :cond_0

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 336
    :cond_0
    return v0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 376
    return-void
.end method

.method public getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    const v1, 0x7f11066e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    if-nez v0, :cond_1

    .line 205
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "init :: mExpandableListView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 210
    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    .line 199
    return-void
.end method

.method public initListViewForDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setSelector(I)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setScrollIndicators(I)V

    .line 348
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 360
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanningStateChanged :: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    .line 359
    :cond_0
    return-void
.end method

.method public readyToDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p2, "selectedList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    const/4 v3, 0x0

    .line 262
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToDeleteAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "readyToDeleteAnimation :: not exist preference already"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v3

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_2

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 277
    const/4 v0, 0x1

    return v0

    .line 270
    :cond_1
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToDeleteAnimation :: contains device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_2
    return v3
.end method

.method public readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p2, "selectedList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    const/4 v3, 0x0

    .line 241
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToInsertAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "readyToInsertAnimation :: exist preference already"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v3

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_2

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 256
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_1
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToInsertAnimation :: contains device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    return v3
.end method

.method public setInsertAnimation()V
    .locals 6

    .prologue
    .line 283
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 284
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 285
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 288
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v3

    add-int v1, v3, v0

    .line 289
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    .line 290
    .local v2, "sortedIndex":I
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 291
    const-string/jumbo v3, "BluetoothExpListController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInsertAnimation :: insert index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , sortedIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "index":I
    .end local v2    # "sortedIndex":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V

    .line 282
    return-void
.end method

.method public setInsertDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 10
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    const/16 v9, 0xc

    .line 298
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 299
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 300
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    const/4 v2, -0x1

    .line 302
    .local v2, "deleteIndex":I
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 303
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v4

    .line 304
    .local v4, "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :goto_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 305
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    .line 307
    .local v1, "deleteDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v2

    .line 309
    :cond_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 310
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 311
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v7, v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v3

    .line 313
    .local v3, "deleteSortedIndex":I
    const-string/jumbo v7, "BluetoothExpListController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInsertDeleteAnimation :: delete deleteIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , deleteSortedIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 317
    .end local v3    # "deleteSortedIndex":I
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v5

    .line 318
    .local v5, "insertIndex":I
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v7, v5, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v6

    .line 320
    .local v6, "insertSortedIndex":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    add-int/lit8 v6, v6, -0x1

    .line 323
    :cond_2
    const-string/jumbo v7, "BluetoothExpListController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInsertDeleteAnimation :: insert insertIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , insertSortedIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 326
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 327
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v9}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 297
    return-void

    .line 303
    .end local v1    # "deleteDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .end local v4    # "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .end local v5    # "insertIndex":I
    .end local v6    # "insertSortedIndex":I
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v4

    .restart local v4    # "insertDeviceGroup":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    goto/16 :goto_0

    .line 305
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public setListDivider(Landroid/graphics/drawable/InsetDrawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/InsetDrawable;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public setListMinimumHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setMinimumHeight(I)V

    .line 339
    return-void
.end method

.method public setListViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setVisibility(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    .line 236
    return-void
.end method
