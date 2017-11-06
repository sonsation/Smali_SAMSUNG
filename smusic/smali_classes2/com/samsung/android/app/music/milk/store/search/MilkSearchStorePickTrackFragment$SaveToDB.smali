.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;
.super Ljava/lang/Thread;
.source "MilkSearchStorePickTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToDB"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

.field private mIsPressBackKey:Z

.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Landroid/app/FragmentManager;Z)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    .param p3, "multipleItemPickerManager"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
    .param p4, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p5, "pressBackkey"    # Z

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mIsPressBackKey:Z

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mContext:Landroid/content/Context;

    .line 317
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    .line 318
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 319
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mFragmentManager:Landroid/app/FragmentManager;

    .line 320
    iput-boolean p5, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mIsPressBackKey:Z

    .line 321
    return-void
.end method

.method private getCheckedStoreList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 387
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    .line 388
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    .line 389
    .local v0, "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 398
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v2

    .line 395
    goto :goto_0
.end method

.method private getSelectedTrackIdsFromTrackList()[J
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->getCheckedStoreList()Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v1

    .line 406
    :cond_0
    return-object v1
.end method

.method private updateSelectAll()[J
    .locals 8

    .prologue
    .line 358
    const/4 v3, 0x0

    .line 359
    .local v3, "selectedTotalTracks":[J
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->getSelectedTrackIdsFromTrackList()[J

    move-result-object v1

    .line 360
    .local v1, "selectedIds":[J
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lez v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v2

    .line 362
    .local v2, "selectedLocalIds":[J
    array-length v4, v1

    .line 363
    .local v4, "totsize":I
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 364
    array-length v5, v2

    add-int/2addr v4, v5

    .line 366
    :cond_0
    new-array v3, v4, [J

    .line 368
    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    .line 369
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 371
    aget-wide v6, v1, v0

    aput-wide v6, v3, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    array-length v5, v2

    if-lez v5, :cond_2

    .line 376
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 377
    array-length v5, v1

    add-int/2addr v5, v0

    aget-wide v6, v2, v0

    aput-wide v6, v3, v5

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    .end local v0    # "i":I
    .end local v2    # "selectedLocalIds":[J
    .end local v4    # "totsize":I
    :cond_2
    return-object v3
.end method


# virtual methods
.method protected getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x3e8

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->getCheckedStoreList()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIdsInArray()[J

    move-result-object v2

    .line 327
    .local v2, "selectedLocalIds":[J
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, v2

    add-int/2addr v4, v5

    if-le v4, v8, :cond_1

    .line 329
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mIsPressBackKey:Z

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    .line 355
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->updateSelectAll()[J

    move-result-object v3

    .line 339
    .local v3, "selectedTotalTracks":[J
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 340
    array-length v4, v3

    if-le v4, v8, :cond_3

    .line 341
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mIsPressBackKey:Z

    if-eqz v4, :cond_2

    .line 342
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 344
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 347
    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 348
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->what:I

    .line 349
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 353
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$SaveToDB;->mHandler:Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
