.class public Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mSingleArtist:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mSingleArtist:Z

    .line 333
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mSingleArtist:Z

    return v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 391
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const/16 v2, 0x64

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/16 v2, -0x3e8

    .line 400
    :goto_0
    return v2

    .line 395
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v2

    goto :goto_0

    .line 400
    .end local v1    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v2

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 353
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 354
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getItemViewType(I)I

    move-result v2

    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_0

    .line 355
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 356
    .local v0, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mTrackNumberColIndex:I

    .line 357
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "disNumberText":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->access$200(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->access$200(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a01e6

    .line 360
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 362
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "disNumberText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, -0x1

    .line 366
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mText1Index:I

    if-eq v2, v5, :cond_0

    .line 367
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mText1Index:I

    .line 368
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_0
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mText2Index:I

    if-eq v2, v5, :cond_1

    .line 371
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mText2Index:I

    .line 372
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_1
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mText3Index:I

    if-eq v2, v5, :cond_3

    .line 375
    const-string v1, ""

    .line 376
    .local v1, "durationStr":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mText3Index:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 377
    .local v0, "duration":I
    if-lez v0, :cond_2

    .line 378
    div-int/lit16 v0, v0, 0x3e8

    .line 379
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mContext:Landroid/content/Context;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 381
    :cond_2
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mContext:Landroid/content/Context;

    .line 383
    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
    .end local v0    # "duration":I
    .end local v1    # "durationStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected bridge synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 338
    .local v0, "a":Landroid/app/Activity;
    const/16 v1, -0x3e8

    if-ne p2, v1, :cond_0

    .line 339
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bd

    .line 340
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 341
    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;Landroid/view/View;I)V

    .line 348
    :goto_0
    return-object v1

    .line 344
    :cond_0
    if-nez p3, :cond_1

    .line 345
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a6

    .line 346
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 348
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleArtist(Z)V
    .locals 0
    .param p1, "singleArtist"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->mSingleArtist:Z

    .line 405
    return-void
.end method
