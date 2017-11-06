.class public Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
.super Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.source "RadioHistoryFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;,
        Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;,
        Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/MilkServiceFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RadioHistoryFragment"


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnMoreMenuItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;-><init>()V

    .line 190
    new-instance v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mOnMoreMenuItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 218
    new-instance v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Landroid/view/View;I)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getContextMenu(Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getContextMenu(Landroid/view/View;I)Landroid/widget/PopupMenu;
    .locals 11
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v10, 0x7f0a0378

    const v9, 0x7f0a02fa

    const v8, 0x7f0a02f9

    const/4 v7, 0x0

    .line 246
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 247
    .local v3, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 248
    .local v2, "menu":Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 250
    const-string/jumbo v6, "station_id"

    .line 251
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "stationId":Ljava/lang/String;
    const-string/jumbo v6, "track_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "trackId":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    .line 254
    invoke-static {v6, v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Station;->isSmartStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 255
    .local v1, "isSmartStation":Z
    if-nez v1, :cond_0

    .line 256
    invoke-interface {v2, v7, v10, v7, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 260
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Station;->isMyStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 261
    invoke-interface {v2, v7, v9, v7, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    :goto_0
    new-instance v6, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;

    invoke-direct {v6, p0, v4, v5}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 304
    .end local v1    # "isSmartStation":Z
    .end local v4    # "stationId":Ljava/lang/String;
    .end local v5    # "trackId":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 264
    .restart local v1    # "isSmartStation":Z
    .restart local v4    # "stationId":Ljava/lang/String;
    .restart local v5    # "trackId":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v7, v8, v7, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;-><init>()V

    .line 71
    .local v0, "fg":Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    return-object v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x10000058

    return v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 399
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 400
    const-string v1, "RadioHistoryFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled. reqId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-nez p3, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    .line 403
    .local v0, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .end local v0    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 407
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
    .locals 4

    .prologue
    .line 121
    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 122
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    const-string v2, "artist"

    .line 123
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    const-string v2, "album_id"

    .line 124
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    const-string v2, "cp_attrs"

    .line 125
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    const-string v2, "audio_id"

    .line 126
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    const-string v2, "date_locale"

    .line 127
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->setHeaderCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    move-result-object v1

    const v2, 0x80002

    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;

    .line 130
    .local v0, "builder":Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 141
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 142
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 162
    const v0, 0x7f130025

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDeleteAllRequest()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->isActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->startActionMode()V

    .line 322
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onDestroyView()V

    .line 380
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
    .line 147
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 152
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceConnected()V

    .line 310
    return-void
.end method

.method public onMilkServiceDisconnected()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceDisconnected()V

    .line 315
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->startActionMode()V

    .line 181
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "906"

    const-string v2, "9091"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "907"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205da
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 167
    const v1, 0x7f1205da

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    .local v0, "delete":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 174
    return-void

    .line 171
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0354

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 85
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setChoiceMode(I)V

    .line 87
    new-instance v2, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 88
    new-instance v2, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;

    invoke-direct {v2, p0, p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 90
    const v1, 0x7f0a0355

    .line 91
    .local v1, "guideTextId":I
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v3, 0x7f0a013a

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 93
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setListShown(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->initListLoader(I)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mOnMoreMenuItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->setOnMoreMenuItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 101
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 102
    const-string v2, "RadioHistory"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/executor/radio/RadioHistoryExecutor$IRadioHistoryManageDelegate;)V

    aput-object v4, v3, v6

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "906"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 106
    return-void
.end method
