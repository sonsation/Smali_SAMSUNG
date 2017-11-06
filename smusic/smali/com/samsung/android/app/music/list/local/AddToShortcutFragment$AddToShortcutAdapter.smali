.class public Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "AddToShortcutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToShortcutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mData1Col:Ljava/lang/String;

.field private mData1Index:I

.field private mIsFavorite:Z

.field private final mSubCategoryCol:Ljava/lang/String;

.field private mSubCategoryIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    const-class v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 395
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 352
    iput v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Index:I

    .line 354
    iput v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryIndex:I

    .line 356
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mIsFavorite:Z

    .line 397
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->access$300(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Col:Ljava/lang/String;

    .line 398
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->access$400(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryCol:Ljava/lang/String;

    .line 399
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->access$500(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)I

    move-result v1

    const v2, 0x10030

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mIsFavorite:Z

    .line 400
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getItemId(I)J

    move-result-wide v0

    .line 509
    .local v0, "id":J
    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 510
    const/16 v2, -0xa

    .line 518
    :goto_0
    return v2

    .line 511
    :cond_0
    const-wide/16 v2, -0xd

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 512
    const/16 v2, -0xb

    goto :goto_0

    .line 513
    :cond_1
    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 514
    const/16 v2, -0xc

    goto :goto_0

    .line 515
    :cond_2
    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 516
    const/16 v2, -0x9

    goto :goto_0

    .line 518
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result v2

    goto :goto_0
.end method

.method public getSubCategory(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 533
    iget v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryIndex:I

    if-eq v2, v1, :cond_0

    .line 534
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 537
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return v1
.end method

.method public getText2(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 524
    iget v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText2Index:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 525
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 526
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText2Index:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 528
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 405
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Col:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Index:I

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryCol:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mSubCategoryIndex:I

    .line 414
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 429
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    .line 435
    .local v0, "viewType":I
    const/16 v1, -0x7d1

    if-eq v0, v1, :cond_0

    .line 440
    int-to-long v2, v0

    const-wide/16 v4, -0xb

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    int-to-long v2, v0

    const-wide/16 v4, -0xc

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    int-to-long v2, v0

    const-wide/16 v4, -0xe

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    int-to-long v2, v0

    const-wide/16 v4, -0xd

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 443
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 446
    :cond_3
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 447
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 343
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 343
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, -0x1

    .line 475
    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mIsFavorite:Z

    if-nez v4, :cond_1

    .line 476
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    const/4 v2, -0x1

    .line 481
    .local v2, "listType":I
    iget-object v4, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText2Index:I

    if-eq v4, v6, :cond_2

    .line 482
    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText2Index:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 483
    iget-object v4, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultListUtils;->getListTypeTextResId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 486
    :cond_2
    iget-object v4, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText1Index:I

    if-eq v4, v6, :cond_4

    .line 487
    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText1Index:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "text":Ljava/lang/String;
    const v4, 0x10004

    if-ne v2, v4, :cond_5

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mKeywordIndex:I

    if-eq v4, v6, :cond_5

    .line 489
    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mKeywordIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 490
    .local v0, "keywordId":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mFragment:Landroid/app/Fragment;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    .end local v0    # "keywordId":J
    :cond_3
    :goto_1
    iget-object v4, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .end local v3    # "text":Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 493
    .restart local v3    # "text":Ljava/lang/String;
    :cond_5
    const v4, 0x10007

    if-ne v2, v4, :cond_6

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Index:I

    if-eq v4, v6, :cond_6

    .line 494
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mData1Index:I

    .line 495
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLastDirectoryName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 497
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected bridge synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 343
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected onBindViewHolderThumbnailView(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 452
    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mIsFavorite:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 453
    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mThumbnailKeyIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 454
    .local v0, "albumId":J
    const/4 v3, 0x0

    .line 456
    .local v3, "uri":Landroid/net/Uri;
    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText2Index:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 457
    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mText2Index:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 459
    .local v2, "listType":I
    const/16 v4, 0x54

    if-eq v2, v4, :cond_0

    const/16 v4, 0x55

    if-eq v2, v4, :cond_0

    const/16 v4, 0x56

    if-ne v2, v4, :cond_1

    .line 461
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_THUMBNAIL:Landroid/net/Uri;

    .line 462
    const v4, 0x7f0d0063

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 463
    invoke-virtual {v4, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;

    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ALBUM_ART:I

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 471
    .end local v0    # "albumId":J
    .end local v2    # "listType":I
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bridge synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 343
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 418
    if-nez p3, :cond_0

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a4

    const/4 v2, 0x0

    .line 420
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 422
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method
