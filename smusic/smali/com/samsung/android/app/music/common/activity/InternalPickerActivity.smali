.class public Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "InternalPickerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector$LibraryListSelectorFocusable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# static fields
.field private static final KEY_CHECKED_ITEM_IDS:Ljava/lang/String; = "checked_item_ids"

.field private static final KEY_SELECTED_LIST_TYPE:Ljava/lang/String; = "selected_list_type"


# instance fields
.field private mIsAddedCustomFragmentAnimation:Z

.field private mListType:I

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private final mOnTabSelectedItemChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

.field private mParentItemCount:I

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mIsAddedCustomFragmentAnimation:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mListType:I

    .line 59
    iput v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mParentItemCount:I

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mOnTabSelectedItemChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mListType:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mListType:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->attachLibraryListFragment(I)V

    return-void
.end method

.method private attachLibraryListFragment(I)V
    .locals 6
    .param p1, "listType"    # I

    .prologue
    const/4 v5, 0x1

    .line 154
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->hasSubListFragment(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 160
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 164
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 165
    const-string v4, "content://com.sec.android.app.music/"

    .line 166
    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->newInstance(IZLjava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 167
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 168
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mIsAddedCustomFragmentAnimation:Z

    if-nez v4, :cond_2

    .line 169
    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mIsAddedCustomFragmentAnimation:Z

    .line 173
    :goto_1
    const v4, 0x1020011

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 176
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mListType:I

    .line 177
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setTabSelected(I)V

    goto :goto_0

    .line 171
    .restart local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    const v4, 0x7f060001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private hasSubListFragment(I)Z
    .locals 4
    .param p1, "listType"    # I

    .prologue
    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "hasSubListFragment":Z
    const v3, 0x110001

    if-eq p1, v3, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 185
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 186
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 190
    .end local v0    # "fg":Landroid/app/Fragment;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_0
    return v2
.end method


# virtual methods
.method public getCheckedItemIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIdsInArray()[J
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIdsInArray(I)[J
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 201
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray(I)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    return v0
.end method

.method public isItemChecked(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->isItemChecked(J)Z

    move-result v0

    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public launchSearch()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra_checked_item_ids"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getCheckedItemIdsInArray()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 243
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "extra_item_count"

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mParentItemCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 141
    if-nez p1, :cond_0

    .line 142
    if-ne p2, v1, :cond_1

    .line 143
    invoke-virtual {p0, v1, p3}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_checked_item_ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 148
    .local v0, "checkedItemIds":[J
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->updateCheckedItems([J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v5

    .line 74
    .local v5, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v8, v7, v6

    invoke-virtual {v5, v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Z[Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 77
    sget-boolean v7, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2015A:Z

    if-eqz v7, :cond_0

    .line 78
    const v7, 0x7f0f00b7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->setTheme(I)V

    .line 81
    :cond_0
    const v7, 0x7f040097

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->setContentView(I)V

    .line 82
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 84
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v8, 0x7f0a018c

    invoke-direct {v7, p0, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 85
    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 87
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 88
    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v7, v7, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 90
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 94
    :cond_1
    const v4, 0x110001

    .line 95
    .local v4, "listType":I
    sget-boolean v7, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v7, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_item_count"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mParentItemCount:I

    .line 98
    :cond_2
    if-eqz p1, :cond_3

    .line 99
    const-string/jumbo v7, "selected_list_type"

    const v8, 0x110001

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 100
    const-string v7, "checked_item_ids"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 101
    .local v1, "checkedItemIds":[J
    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_3

    aget-wide v2, v1, v6

    .line 102
    .local v2, "checkedItemId":J
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v8, v2, v3, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "checkedItemIds":[J
    .end local v2    # "checkedItemId":J
    :cond_3
    iput v4, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mListType:I

    .line 107
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;-><init>(Landroid/app/Activity;)V

    const v7, 0x7f110231

    .line 108
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->setTabBackgroundColorResId(I)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    move-result-object v6

    const v7, 0x7f020384

    .line 109
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->setTabViewBackgroundResId(I)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    move-result-object v6

    const v7, 0x7f1102c7

    .line 110
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->setTabViewTextColorResId(I)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .line 111
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mOnTabSelectedItemChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setOnTabSelectedItemChangedListener(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;)V

    .line 112
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-virtual {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setTabSelected(I)V

    .line 113
    new-instance v6, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 119
    return-void
.end method

.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 276
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1205e4

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    .line 278
    .local v0, "checkedCount":I
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mParentItemCount:I

    add-int/2addr v1, v0

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 279
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MaxExceed"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x1

    .line 283
    .end local v0    # "checkedCount":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const-string/jumbo v0, "selected_list_type"

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string v0, "checked_item_ids"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 65
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "value"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 212
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 251
    return-void
.end method

.method public setLibrarySelectorFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mTabController:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setFocusable(ZZ)V

    .line 261
    return-void
.end method

.method public setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 232
    return-void
.end method

.method public updateCheckedItemIds(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "removeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItemIds(Ljava/util/ArrayList;)V

    .line 227
    return-void
.end method

.method public updateCheckedItems([J)V
    .locals 1
    .param p1, "checkedItemIds"    # [J

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->updateCheckedItems([J)V

    .line 237
    return-void
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 272
    return-void
.end method
