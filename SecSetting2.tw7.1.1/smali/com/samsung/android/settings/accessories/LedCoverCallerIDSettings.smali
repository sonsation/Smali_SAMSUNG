.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LedCoverCallerIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$2;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$4;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$7;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private mCallerIDIconStyle:I

.field private mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

.field private mCustomCategoryDivider:Landroid/view/View;

.field private mCustomCategoryTitle:Landroid/widget/TextView;

.field mDuplicatedChecker:Landroid/util/SparseIntArray;

.field private mFabListner:Landroid/view/View$OnClickListener;

.field private mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

.field private mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

.field private mGridViewCustomKeyListener:Landroid/view/View$OnKeyListener;

.field private mGridViewCustomListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

.field private mGridViewPreloadListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridViewWrapper:Landroid/widget/LinearLayout;

.field private mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

.field private final mLedIconReceiver:Landroid/content/BroadcastReceiver;

.field private mListCustomCallerID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemCheckedListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mListItemEditListner:Landroid/view/View$OnClickListener;

.field private mListItemTouchListner:Landroid/view/View$OnTouchListener;

.field private mListPreloadCallerID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfCustomCallerID:I

.field private mNumOfPreloadCallerID:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectActionView:Landroid/view/View;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedContactTextView:Landroid/widget/TextView;

.field private mUIMode:I

.field private mbShowAddButton:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDIconStyle:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedIconGridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemCheckedListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemEditListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemTouchListner:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->encircle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "array"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getCustomIconByArray(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->showDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    .line 94
    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    .line 96
    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    .line 98
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    .line 100
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    .line 104
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    .line 106
    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    .line 108
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    .line 110
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    .line 114
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    .line 116
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    .line 118
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    .line 120
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    .line 122
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 124
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllText:Landroid/widget/TextView;

    .line 126
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDIconStyle:I

    .line 137
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mbShowAddButton:Z

    .line 139
    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    .line 217
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFabListner:Landroid/view/View$OnClickListener;

    .line 336
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$2;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mLedIconReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreloadListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 484
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$4;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 507
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomKeyListener:Landroid/view/View$OnKeyListener;

    .line 599
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemCheckedListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 609
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$7;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemTouchListner:Landroid/view/View$OnTouchListener;

    .line 624
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemEditListner:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 837
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iput-boolean p1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    .line 841
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateActionbarState()V

    .line 836
    return-void
.end method

.method private checkCallerIDContactCount()V
    .locals 17

    .prologue
    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    if-nez v1, :cond_0

    .line 685
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    const-string/jumbo v2, "checkCallerIDContactCount, mCallerIDInfoList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void

    .line 688
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    .line 689
    .local v16, "preloadListSize":I
    if-nez v16, :cond_1

    .line 690
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    const-string/jumbo v2, "checkCallerIDContactCount, mCallerIDInfoList size is 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 695
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 696
    .local v7, "ListIndexByCallerIDIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->resetCallerIDCount()V

    .line 698
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 702
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v1, :cond_3

    .line 703
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-ge v13, v1, :cond_3

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->resetCallerIDCount()V

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 709
    :cond_3
    const/4 v8, 0x0

    .line 711
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 712
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "sec_led"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 713
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 711
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 720
    .local v8, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 724
    .local v10, "contactCount":I
    if-eqz v8, :cond_9

    .line 725
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 726
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCallerIDCount() Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-lez v10, :cond_6

    .line 728
    :cond_4
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 729
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, "contact_id":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 731
    .local v9, "callerID":Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 732
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 733
    .local v14, "listIndex":Ljava/lang/Integer;
    if-eqz v14, :cond_4

    .line 734
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    if-gt v1, v2, :cond_5

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->increaseCallerIDCount()V

    .line 736
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "increaseCallerIDCount(preload) contact_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 737
    const-string/jumbo v3, ", caller ID : "

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 714
    .end local v9    # "callerID":Ljava/lang/String;
    .end local v10    # "contactCount":I
    .end local v11    # "contact_id":Ljava/lang/String;
    .end local v14    # "listIndex":Ljava/lang/Integer;
    .local v8, "c":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 715
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQL Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 717
    return-void

    .line 738
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .local v8, "c":Landroid/database/Cursor;
    .restart local v9    # "callerID":Ljava/lang/String;
    .restart local v10    # "contactCount":I
    .restart local v11    # "contact_id":Ljava/lang/String;
    .restart local v14    # "listIndex":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v1, :cond_4

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->increaseCallerIDCount()V

    .line 741
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "increaseCallerIDCount(custom) contact_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 742
    const-string/jumbo v3, ", caller ID : "

    .line 741
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 748
    .end local v9    # "callerID":Ljava/lang/String;
    .end local v11    # "contact_id":Ljava/lang/String;
    .end local v14    # "listIndex":Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v1, :cond_7

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    .line 751
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v1, :cond_8

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    .line 753
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 757
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v15, "logger":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_a

    .line 759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    const v1, 0x7f0b03de

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 760
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 763
    :cond_a
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-ge v13, v1, :cond_b

    .line 764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const v1, 0x7f0b03de

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 765
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 768
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LVCC"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertLog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b03a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 796
    const v1, 0x7f0b03aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 798
    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$11;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    .line 797
    const v2, 0x7f0b0700

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$12;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 810
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private encircle(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resID"    # I

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 775
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 776
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 777
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 779
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getCustomIconByArray(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .param p1, "array"    # Ljava/lang/String;

    .prologue
    .line 870
    if-nez p1, :cond_0

    .line 871
    const-string/jumbo v18, "LedCoverCallerIDSettings"

    const-string/jumbo v19, "getCustomIconByArray led array is null"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v18, 0x0

    return-object v18

    .line 874
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x99

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 875
    const-string/jumbo v18, "LedCoverCallerIDSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCustomIconByArray led array size unmatch : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 876
    const/16 v20, 0x99

    .line 875
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/16 v18, 0x0

    return-object v18

    .line 880
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 881
    const v19, 0x7f0a0539

    .line 880
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v9, v0

    .line 882
    .local v9, "iconDotRadius":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 883
    const v19, 0x7f0a053a

    .line 882
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v10, v0

    .line 885
    .local v10, "iconRectMargin":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 886
    const v19, 0x7f0a053c

    .line 885
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v13, v0

    .line 887
    .local v13, "iconSizeWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 888
    const v19, 0x7f0a053b

    .line 887
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v11, v0

    .line 889
    .local v11, "iconSizeHeight":F
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v10

    sub-float v14, v13, v18

    .line 890
    .local v14, "iconSizeWidthExceptMargin":F
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v10

    sub-float v12, v11, v18

    .line 892
    .local v12, "iconSizeHeightExceptMargin":F
    move/from16 v16, v10

    .line 893
    .local v16, "x":F
    move/from16 v17, v10

    .line 894
    .local v17, "y":F
    const/4 v15, 0x0

    .line 896
    .local v15, "numColum":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 897
    .local v5, "byteArray":[B
    new-instance v2, Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 898
    .local v2, "Pnt":Landroid/graphics/Paint;
    float-to-int v0, v13

    move/from16 v18, v0

    float-to-int v0, v11

    move/from16 v19, v0

    .line 899
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 898
    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 900
    .local v4, "bm":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 901
    .local v3, "backCanvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v18, 0x99

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 902
    const/16 v18, 0x11

    move/from16 v0, v18

    if-lt v15, v0, :cond_2

    .line 903
    const/high16 v18, 0x41100000    # 9.0f

    div-float v18, v12, v18

    .line 904
    const v19, 0x3ecccccd    # 0.4f

    .line 903
    add-float v18, v18, v19

    add-float v17, v17, v18

    .line 905
    move/from16 v16, v10

    .line 906
    const/4 v15, 0x0

    .line 908
    :cond_2
    aget-byte v18, v5, v8

    const/16 v19, 0x31

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 909
    add-float v6, v16, v9

    .line 910
    .local v6, "cx":F
    add-float v7, v17, v9

    .line 911
    .local v7, "cy":F
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 912
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 913
    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 914
    invoke-virtual {v3, v6, v7, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 916
    .end local v6    # "cx":F
    .end local v7    # "cy":F
    :cond_3
    const/high16 v18, 0x41880000    # 17.0f

    div-float v18, v14, v18

    .line 917
    const v19, 0x3ecccccd    # 0.4f

    .line 916
    add-float v18, v18, v19

    add-float v16, v16, v18

    .line 918
    add-int/lit8 v15, v15, 0x1

    .line 901
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 920
    :cond_4
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v18
.end method

.method private getNumOfCheckedCustomList()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 826
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 827
    :cond_0
    return v3

    .line 828
    :cond_1
    const/4 v0, 0x0

    .line 829
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 830
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    if-eqz v2, :cond_2

    .line 831
    add-int/lit8 v0, v0, 0x1

    .line 829
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    :cond_3
    return v0
.end method

.method private setCustomGridViewCategoryTitle(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 814
    if-nez p2, :cond_0

    .line 815
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x0

    .line 817
    .local v0, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 819
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    :cond_1
    const v1, 0x7f0b03ac

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 822
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 821
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    return-void
.end method

.method private setGridViewCustom()V
    .locals 6

    .prologue
    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 451
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    const v3, 0x7f040180

    const/4 v4, 0x0

    move-object v1, p0

    .line 450
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setExpanded(Z)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setParents(Landroid/app/Activity;Landroid/widget/ScrollView;)V

    .line 456
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 448
    :cond_0
    return-void
.end method

.method private setGridViewPreload()V
    .locals 6

    .prologue
    .line 387
    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 388
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    const v3, 0x7f040180

    const/4 v4, 0x0

    move-object v1, p0

    .line 387
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setExpanded(Z)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setParents(Landroid/app/Activity;Landroid/widget/ScrollView;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreloadListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    return-void
.end method

.method private updateListCustomCallerID()V
    .locals 15

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    if-nez v0, :cond_1

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    .line 403
    :goto_0
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    .line 404
    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon_id"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon_array"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 405
    const-string/jumbo v0, "icon_name"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon_count"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 407
    .local v2, "keys":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 409
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    const-string/jumbo v1, "content://com.samsung.android.app.ledcovergrace.cp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    .line 411
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 409
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 418
    .local v11, "c":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 422
    .local v13, "contactCount":I
    if-eqz v11, :cond_4

    .line 423
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 424
    const-string/jumbo v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCallerIDCount() Count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-lez v13, :cond_2

    .line 426
    const-string/jumbo v0, "icon_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 427
    .local v7, "COLUMN_IDX_ID":I
    const-string/jumbo v0, "icon_array"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 428
    .local v6, "COLUMN_IDX_ARRAY":I
    const-string/jumbo v0, "icon_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 430
    .local v8, "COLUMN_IDX_NAME":I
    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 432
    .local v12, "callerID":I
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 433
    .local v9, "IconArray":Ljava/lang/String;
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, "IconName":Ljava/lang/String;
    if-lez v12, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    .line 435
    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v12, v3, v10, v9}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string/jumbo v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LED CUSTOM ICON (list added): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 438
    const-string/jumbo v3, "\n"

    .line 437
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 401
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v6    # "COLUMN_IDX_ARRAY":I
    .end local v7    # "COLUMN_IDX_ID":I
    .end local v8    # "COLUMN_IDX_NAME":I
    .end local v9    # "IconArray":Ljava/lang/String;
    .end local v10    # "IconName":Ljava/lang/String;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "callerID":I
    .end local v13    # "contactCount":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 412
    .restart local v2    # "keys":[Ljava/lang/String;
    .local v11, "c":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 413
    .local v14, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQL Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 415
    return-void

    .line 442
    .end local v14    # "e":Landroid/database/sqlite/SQLiteException;
    .local v11, "c":Landroid/database/Cursor;
    .restart local v13    # "contactCount":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    .line 444
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_4
    return-void
.end method

.method private updateListPreloadCallerID()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 355
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    if-nez v4, :cond_2

    .line 356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    .line 360
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 361
    const v5, 0x7f0c00bb

    .line 360
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 362
    .local v3, "name_array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 363
    const v5, 0x7f0c00bc

    .line 362
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 364
    .local v1, "icon_array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 365
    const v5, 0x7f0c00bd

    .line 364
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 367
    .local v2, "index_array":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    if-nez v4, :cond_0

    .line 368
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 371
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    .line 372
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 373
    const/16 v4, 0x14

    iput v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    .line 375
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    if-ge v0, v4, :cond_3

    .line 376
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v3, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-direct {v5, v6, v7, v8, v11}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "i":I
    .end local v1    # "icon_array":Landroid/content/res/TypedArray;
    .end local v2    # "index_array":Landroid/content/res/TypedArray;
    .end local v3    # "name_array":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 381
    .restart local v0    # "i":I
    .restart local v1    # "icon_array":Landroid/content/res/TypedArray;
    .restart local v2    # "index_array":Landroid/content/res/TypedArray;
    .restart local v3    # "name_array":Landroid/content/res/TypedArray;
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 351
    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateListPreloadCallerID()V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setGridViewPreload()V

    .line 209
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setHasOptionsMenu(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "change_mode"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 150
    .local v2, "isChangeMode":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 152
    .local v3, "isEditMode":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v4, "edit_mode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 155
    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    iput v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0b1d3a

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverLEDCallerIDCustomFeature(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    .line 167
    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    if-nez v4, :cond_1

    .line 168
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    iput-boolean v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mbShowAddButton:Z

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    iput v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDIconStyle:I

    .line 142
    :cond_2
    return-void

    .line 158
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->actionBar:Landroid/app/ActionBar;

    goto :goto_0

    .line 162
    :cond_4
    iput v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 786
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 787
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 789
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 241
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 245
    const v1, 0x7f04017f

    const/4 v2, 0x0

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f11052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllText:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$9;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    .line 264
    const v1, 0x7f11052b

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    .line 272
    const v1, 0x7f11052d

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    const v1, 0x7f0b03dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    :goto_0
    const v0, 0x7f0b0508

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 281
    const v0, 0x7f0b0510

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    if-ne v0, v4, :cond_2

    .line 286
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    const-string/jumbo v0, "LedCoverCallerIDSettings"

    const-string/jumbo v1, "updateSelectMenu null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    if-ne v0, v5, :cond_3

    .line 289
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getNumOfCheckedCustomList()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 293
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-nez v0, :cond_4

    .line 294
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 298
    :cond_5
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 178
    const v1, 0x7f040181

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f110534

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    .line 180
    const v1, 0x7f110535

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedIconGridView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    .line 181
    const v1, 0x7f110538

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedIconGridView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    .line 182
    const v1, 0x7f110536

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    .line 183
    const v1, 0x7f110537

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    .line 185
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_0
    const v1, 0x7f110539

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    .line 192
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mbShowAddButton:Z

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFabListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    .line 201
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const v1, 0x7f110533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V

    .line 205
    :cond_2
    return-object v0

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return v4

    .line 308
    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "edit_mode"

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move v5, v4

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 333
    return v11

    .line 314
    .end local v2    # "args":Landroid/os/Bundle;
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getNumOfCheckedCustomList()I

    move-result v7

    .line 315
    .local v7, "count":I
    if-nez v7, :cond_0

    .line 316
    return v4

    .line 317
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v9, "led_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOptionsItemSelected - remove : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    .line 321
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    const-string/jumbo v3, ", "

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    .line 321
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 326
    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.app.ledcovergrace.REMOVE_CUSTOM_ICON"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v10, "mIntent":Landroid/content/Intent;
    const-string/jumbo v0, "led_id"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->finish()V

    goto/16 :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 642
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mLedIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 641
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 650
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 657
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    new-instance v0, Landroid/content/IntentFilter;

    .line 659
    const-string/jumbo v1, "com.samsung.android.app.ledcovergrace.REMOVE_CUSTOM_ICON_COMPLETE"

    .line 658
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mLedIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateCustomIconAllItems()V

    .line 664
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->checkCallerIDContactCount()V

    .line 649
    return-void
.end method

.method public updateActionbarState()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getNumOfCheckedCustomList()I

    move-result v0

    .line 848
    if-lez v0, :cond_0

    .line 849
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 850
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b03db

    .line 849
    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 861
    :goto_1
    if-nez v0, :cond_2

    .line 862
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 844
    :goto_2
    return-void

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0b03dd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method updateCustomIconAllItems()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateListCustomCallerID()V

    .line 669
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    .line 670
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setGridViewCustom()V

    .line 675
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setCustomGridViewCategoryTitle(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 667
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
