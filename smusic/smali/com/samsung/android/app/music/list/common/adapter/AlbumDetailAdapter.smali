.class public Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "AlbumDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;,
        Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mYearNameCol:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->access$000(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mYearNameCol:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 129
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/16 v2, 0x64

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 144
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v2

    :goto_0
    return v2

    .line 133
    :sswitch_0
    const/16 v2, -0x3e8

    goto :goto_0

    .line 135
    :sswitch_1
    const/16 v2, -0x3e9

    goto :goto_0

    .line 137
    :sswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v2

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x270f -> :sswitch_1
        -0x64 -> :sswitch_0
        0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 66
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v5

    .line 68
    .local v5, "c":Landroid/database/Cursor;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->viewType:I

    sparse-switch v11, :sswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 70
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mText2Index:I

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mYearNameCol:Ljava/lang/String;

    .line 72
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 74
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    const v12, 0x7f1100ef

    const/4 v13, 0x0

    .line 75
    invoke-static {v9, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 74
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    const v12, 0x7f110044

    const/4 v13, 0x0

    .line 77
    invoke-static {v9, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    const v12, 0x7f110043

    const/4 v13, 0x0

    .line 79
    invoke-static {v9, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    const v11, 0x7f0d0063

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 81
    .local v4, "bitmapSize":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mThumbnailKeyIndex:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 83
    .local v2, "albumId":J
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mIsRemoteTrack:Z

    if-eqz v11, :cond_0

    .line 84
    sget-object v10, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DLNA_ARTWORK_URI:Landroid/net/Uri;

    .line 88
    .local v10, "uri":Landroid/net/Uri;
    :goto_1
    const v11, 0x7f0d0063

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v11

    .line 89
    invoke-virtual {v11, v10, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->titleImage:Landroid/widget/ImageView;

    sget v13, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 90
    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 91
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 92
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingTop:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingTop:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 94
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingEachAlbum:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v10, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    .restart local v10    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 96
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingTop:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f020146

    .line 97
    invoke-virtual {v12, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingTop:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 99
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->spacingEachAlbum:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 103
    .end local v2    # "albumId":J
    .end local v4    # "bitmapSize":I
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "uri":Landroid/net/Uri;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a00a0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mTrackNumberColIndex:I

    .line 104
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "disNumberText":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->discSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->discSubtitleText:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0a01e6

    .line 107
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 106
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    .end local v6    # "disNumberText":Ljava/lang/String;
    :sswitch_2
    const-string v8, ""

    .line 111
    .local v8, "durationStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mText3Index:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 112
    .local v7, "duration":I
    if-lez v7, :cond_2

    .line 113
    div-int/lit16 v7, v7, 0x3e8

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mContext:Landroid/content/Context;

    int-to-long v12, v7

    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 116
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v12, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    .line 117
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_1
        0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/app/Activity;
    if-nez p3, :cond_0

    .line 44
    sparse-switch p2, :sswitch_data_0

    .line 61
    :cond_0
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;Landroid/view/View;I)V

    return-object v1

    .line 46
    :sswitch_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ae

    .line 47
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 48
    goto :goto_0

    .line 50
    :sswitch_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bd

    .line 51
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 52
    goto :goto_0

    .line 54
    :sswitch_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a6

    .line 55
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 56
    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_1
        0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method
