.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ARGS_URL_AUTHORITY_BASE:Ljava/lang/String; = "url_authority_base"

.field protected static final ARGS_USE_BLUR_UI:Ljava/lang/String; = "use_blur_ui"

.field private static final LOADER_ALL_ITEM_COUNT:I = 0x12fd1


# instance fields
.field private final mAllTrackCountLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private mItemCount:I

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

.field private final mOnSelectAllClickListener:Landroid/view/View$OnClickListener;

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private final mUiUpdateHandler:Landroid/os/Handler;

.field private final mUpdateCheckedItemIds:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUiUpdateHandler:Landroid/os/Handler;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mItemCount:I

    .line 228
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mOnSelectAllClickListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUpdateCheckedItemIds:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .line 340
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mAllTrackCountLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUpdateCheckedItemIds:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUiUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->reloadSelectAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setSelectAllViewEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
    .locals 3
    .param p0, "useBlurUi"    # Z
    .param p1, "uriAuthorityBase"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    const-string/jumbo v2, "url_authority_base"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;-><init>()V

    .line 75
    .local v1, "fg":Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v1
.end method

.method private reloadSelectAll()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 216
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getCheckedItemIds(I)[J

    move-result-object v2

    .line 218
    .local v2, "ids":[J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v4, "wrappedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-wide v0, v2, v5

    .line 220
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "id":J
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v7, "url_authority_base"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "uriString":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/RefreshSelectedItemsUpdateTask;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-direct {v5, p0, v7, v8, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/RefreshSelectedItemsUpdateTask;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;Ljava/lang/String;)V

    new-array v7, v9, [Ljava/util/ArrayList;

    aput-object v4, v7, v6

    .line 224
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/RefreshSelectedItemsUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    .end local v2    # "ids":[J
    .end local v3    # "uriString":Ljava/lang/String;
    .end local v4    # "wrappedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method

.method private setSelectAllViewEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mOnSelectAllClickListener:Landroid/view/View$OnClickListener;

    .line 211
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mItemCount:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mItemCount:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    .line 213
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds(I)[J
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 155
    const v0, 0x100025

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "232"

    .line 85
    .local v0, "screenId":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 82
    .end local v0    # "screenId":Ljava/lang/String;
    :cond_0
    const-string v0, "522"

    goto :goto_0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 138
    .local v0, "winsetUiEnabled":Z
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "album_id"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    .line 139
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    move-result-object v1

    return-object v1

    .line 137
    .end local v0    # "winsetUiEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    sget v0, Lcom/samsung/android/app/musiclibrary/R$menu;->picker_search_common:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 175
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 149
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PickerSearchTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getSearchText()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url_authority_base"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PickerSearchTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUpdateCheckedItemIds:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onDestroy()V

    .line 133
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->clearChoices()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mUpdateCheckedItemIds:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->menu_picker_search_done:I

    if-ne v2, v3, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "extra_checked_item_ids"

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 190
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v3

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 192
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 194
    const/4 v2, 0x1

    .line 196
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 180
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->menu_picker_search_done:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    .local v0, "done":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    return-void

    .line 181
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 97
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setChoiceMode(I)V

    .line 99
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_spacing_top:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v5, "use_blur_ui"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    .local v0, "blurUi":Z
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    .line 104
    .local v1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    if-eqz v0, :cond_0

    .line 105
    sget v3, Lcom/samsung/android/app/musiclibrary/R$drawable;->list_divider_blur:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 107
    :cond_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_single_picker:I

    .line 108
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    sget v5, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_winset:I

    .line 109
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 110
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const v5, 0x12fd1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mAllTrackCountLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    .line 116
    invoke-interface {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 123
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/NoResultViewCreator;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->no_results:I

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v5, p0, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/NoResultViewCreator;-><init>(Landroid/app/Fragment;IZ)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 125
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setListShown(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getListType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->initListLoader(I)V

    .line 127
    return-void

    :cond_1
    move v3, v4

    .line 123
    goto :goto_0
.end method

.method protected setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
        .end annotation
    .end param

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->setChoiceMode(I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    .line 297
    return-void
.end method

.method public setItemChecked(IIZ)V
    .locals 6
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "value"    # Z

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 320
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 321
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->setItemChecked(IIZ)V

    .line 326
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 313
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 314
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->setItemChecked(IZ)V

    .line 315
    return-void
.end method

.method public setItemCheckedAll(Z)V
    .locals 8
    .param p1, "value"    # Z

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 331
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v2

    .line 332
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 333
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->setItemChecked(JZ)V

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->setItemCheckedAll(Z)V

    .line 338
    return-void
.end method
