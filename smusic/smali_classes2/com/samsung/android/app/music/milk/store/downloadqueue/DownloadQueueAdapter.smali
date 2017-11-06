.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "DownloadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DownloadQueueAdapter"

.field private static final UNIT:I = 0x400


# instance fields
.field protected mDownlaodedSizeColumnIndex:I

.field private final mDownloadedSizeCol:Ljava/lang/String;

.field private final mFileExtensionCol:Ljava/lang/String;

.field protected mFileExtensionColumnIndex:I

.field private final mFileSizeCol:Ljava/lang/String;

.field protected mFileSizeColumnIndex:I

.field protected mIsDownlaodingColumnIndex:I

.field private final mIsDownloadingCol:Ljava/lang/String;

.field private mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 44
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionColumnIndex:I

    .line 46
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownlaodedSizeColumnIndex:I

    .line 48
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeColumnIndex:I

    .line 50
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownlaodingColumnIndex:I

    .line 55
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mFileExtensionCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionCol:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mDownlaodedSizeCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownloadedSizeCol:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mFileSizeCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeCol:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mIsDownloadingCol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownloadingCol:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method private static humanReadableByteCount(J)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # J

    .prologue
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 246
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    :goto_0
    return-object v2

    .line 249
    :cond_0
    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 250
    .local v0, "exp":I
    const-string v2, "KMGTPE"

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 251
    .local v1, "pre":C
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1f %cB"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, p0

    int-to-double v8, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionCol:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionColumnIndex:I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeCol:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeColumnIndex:I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownloadedSizeCol:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownloadedSizeCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownlaodedSizeColumnIndex:I

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownloadingCol:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownloadingCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownlaodingColumnIndex:I

    .line 107
    :cond_3
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 75
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionColumnIndex:I

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onBindViewHolderFileExtension(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V

    .line 79
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownlaodedSizeColumnIndex:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeColumnIndex:I

    if-eq v0, v1, :cond_1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onBindViewHolderDownloadProgress(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V

    .line 83
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownlaodingColumnIndex:I

    if-eq v0, v1, :cond_2

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onBindViewHolderDownloadingState(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V

    .line 86
    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderDownloadProgress(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 120
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v2

    .line 121
    .local v2, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileSizeColumnIndex:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 122
    .local v6, "fileSize":J
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mDownlaodedSizeColumnIndex:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 123
    .local v4, "downloaded":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v4

    div-long/2addr v8, v6

    long-to-int v3, v8

    .line 124
    .local v3, "percent":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->progressText:Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0a02bb

    .line 125
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    cmp-long v8, v6, v14

    if-nez v8, :cond_1

    const/4 v8, 0x0

    .line 126
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v13

    .line 125
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->downloadedByte:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s/%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 129
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 130
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 129
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mPlayingTextColor:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 132
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 133
    return-void

    .line 123
    .end local v3    # "percent":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "percent":I
    :cond_1
    move v8, v3

    .line 125
    goto :goto_1
.end method

.method protected onBindViewHolderDownloadingState(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    .local v0, "c":Landroid/database/Cursor;
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mIsDownlaodingColumnIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 141
    .local v1, "isDownloading":Z
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->pause:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const v2, 0x7f020065

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    return-void

    .line 140
    .end local v1    # "isDownloading":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 141
    .restart local v1    # "isDownloading":Z
    :cond_1
    const v2, 0x7f020066

    goto :goto_1
.end method

.method protected onBindViewHolderFileExtension(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, "c":Landroid/database/Cursor;
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFileExtensionColumnIndex:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 112
    .local v2, "type":I
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->fileExtension:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a04ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "extension":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 114
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->fileExtension:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0487

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->fileExtension:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    if-nez p3, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 68
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemButtonClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->mOnItemButtonClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 147
    return-void
.end method
