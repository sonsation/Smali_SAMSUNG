.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "TrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<TVH;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_TRACK_NUM:Ljava/lang/String; = "-"


# instance fields
.field private final mAudioIdCol:Ljava/lang/String;

.field protected mAudioIdColIndex:I

.field private mBitDepthColIndex:I

.field private final mCpTagIconIds:Landroid/util/SparseIntArray;

.field private final mCpTagTexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrmTagTexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrmTypeColIndex:I

.field private mMimeTypeColIndex:I

.field private mPlayState:I

.field protected mPlayingAudioId:J

.field private mPlayingItemEqualizerView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

.field protected mPlayingTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mSamplingRateColIndex:I

.field private mThumbnailPlayPauseIconEnabled:Z

.field private final mTrackNumberCol:Ljava/lang/String;

.field protected mTrackNumberColIndex:I

.field mTrackTagBgColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mTrackTagBgColorSoundQuality:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<*>;"
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 44
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    .line 46
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mSamplingRateColIndex:I

    .line 48
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mBitDepthColIndex:I

    .line 50
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mMimeTypeColIndex:I

    .line 52
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberColIndex:I

    .line 54
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTypeColIndex:I

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mThumbnailPlayPauseIconEnabled:Z

    .line 69
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayState:I

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdCol:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberCol:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mThumbnailPlayPauseIconEnabled:Z

    .line 84
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpTagIconIds:Landroid/util/SparseIntArray;

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpTagTexts:Landroid/util/SparseArray;

    .line 86
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTagTexts:Landroid/util/SparseArray;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mFragment:Landroid/app/Fragment;

    .line 89
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->access$600(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    .line 90
    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpTagTexts:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpTagIconIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private onBindThumbnailPlayPauseIcon(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 173
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mThumbnailPlayPauseIconEnabled:Z

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_button_stub:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "thumbnailButtonStub":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 177
    check-cast v2, Landroid/view/ViewStub;

    .line 178
    .end local v2    # "thumbnailButtonStub":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    .line 182
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 183
    .local v0, "currentAudioId":J
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingAudioId:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    .line 184
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updateThumbnailPlayPauseIconEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Ljava/lang/Boolean;)V

    .line 189
    .end local v0    # "currentAudioId":J
    :cond_1
    :goto_0
    return-void

    .line 186
    .restart local v0    # "currentAudioId":J
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updateThumbnailPlayPauseIconEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private onBindViewHolderTrackNumber(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const/4 v8, 0x0

    .line 141
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberColIndex:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 147
    .local v3, "trackNumber":I
    const/4 v0, 0x0

    .local v0, "emptyTrack":I
    const/16 v4, 0x3e8

    .line 148
    .local v4, "trackSeparator":I
    rem-int/lit16 v3, v3, 0x3e8

    .line 149
    if-nez v3, :cond_0

    .line 150
    const-string v2, "-"

    .line 155
    .local v2, "strTrackNumber":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, "res":Landroid/content/res/Resources;
    const/16 v5, 0x3e8

    if-lt v3, v5, :cond_1

    .line 157
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_numbering_very_small:I

    .line 158
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 157
    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    :goto_1
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void

    .line 152
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "strTrackNumber":Ljava/lang/String;
    :cond_0
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "strTrackNumber":Ljava/lang/String;
    goto :goto_0

    .line 159
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    const/16 v5, 0x64

    if-lt v3, v5, :cond_2

    .line 160
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_numbering_small:I

    .line 161
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 160
    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 162
    :cond_2
    const/16 v5, 0xa

    if-lt v3, v5, :cond_3

    .line 163
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_numbering_normal:I

    .line 164
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 163
    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 166
    :cond_3
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_numbering_large:I

    .line 167
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 166
    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method private onBindViewTrackTagIcon(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const/4 v3, -0x1

    .line 243
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCpAttrs(I)I

    move-result v0

    .line 244
    .local v0, "cpAttrs":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpTagIconIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 245
    .local v1, "iconId":I
    if-eq v1, v3, :cond_0

    .line 246
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onBindViewTrackTagText(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 12
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const/4 v4, 0x0

    .line 194
    .local v4, "handled":Z
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackTagBgColor:I

    .line 195
    .local v0, "backgroundColor":I
    sget-boolean v10, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v10, :cond_3

    .line 196
    const/4 v6, -0x1

    .line 197
    .local v6, "samplingRate":I
    const/4 v1, -0x1

    .line 198
    .local v1, "bitDepth":I
    const/4 v5, 0x0

    .line 199
    .local v5, "mimeType":Ljava/lang/String;
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mSamplingRateColIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 200
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mSamplingRateColIndex:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 202
    :cond_0
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mBitDepthColIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 203
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mBitDepthColIndex:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 205
    :cond_1
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mMimeTypeColIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 206
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mMimeTypeColIndex:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    :cond_2
    invoke-static {v6, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQualityData(IILjava/lang/String;)J

    move-result-wide v8

    .line 210
    .local v8, "soundQualityData":J
    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    invoke-static {v10, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->setSoundQualityTag(Landroid/widget/TextView;J)Z

    move-result v4

    .line 211
    if-eqz v4, :cond_3

    .line 212
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackTagBgColorSoundQuality:I

    .line 216
    .end local v1    # "bitDepth":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "samplingRate":I
    .end local v8    # "soundQualityData":J
    :cond_3
    if-nez v4, :cond_4

    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpAttrsColIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 217
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCpAttrs(I)I

    move-result v2

    .line 218
    .local v2, "cpAttrs":I
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpTagTexts:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 219
    .local v7, "text":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 220
    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const/4 v4, 0x1

    .line 225
    .end local v2    # "cpAttrs":I
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    if-nez v4, :cond_5

    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTypeColIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 226
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTypeColIndex:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 227
    .local v3, "drmType":I
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTagTexts:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 228
    .restart local v7    # "text":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 229
    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const/4 v4, 0x1

    .line 234
    .end local v3    # "drmType":I
    .end local v7    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 235
    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 236
    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_6
    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateThumbnailPlayPauseIconEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 255
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_sound_picker_ic_pause:I

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_playing:I

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 272
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_sound_picker_ic_play:I

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_paused:I

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->thumbnailPlayPauseIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAudioId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 364
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const-wide/16 v0, -0x1

    .line 365
    .local v0, "audioId":J
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 366
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 367
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 369
    :cond_0
    return-wide v0
.end method

.method public getAudioId(Landroid/database/Cursor;)J
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 356
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const-wide/16 v0, -0x1

    .line 357
    .local v0, "audioId":J
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 358
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 360
    :cond_0
    return-wide v0
.end method

.method public getAudioIds()[J
    .locals 8

    .prologue
    .line 373
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v5

    .line 374
    .local v5, "size":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getHeaderViewCount()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getFooterViewCount()I

    move-result v7

    sub-int/2addr v6, v7

    new-array v2, v6, [J

    .line 375
    .local v2, "audioIds":[J
    const/4 v4, 0x0

    .line 376
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 377
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getAudioId(I)J

    move-result-wide v0

    .line 378
    .local v0, "audioId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 379
    aput-wide v0, v2, v4

    .line 380
    add-int/lit8 v4, v4, 0x1

    .line 376
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "audioId":J
    :cond_1
    return-object v2
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 338
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdCol:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    .line 342
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v0, :cond_1

    .line 343
    const-string/jumbo v0, "sampling_rate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mSamplingRateColIndex:I

    .line 344
    const-string v0, "bit_depth"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mBitDepthColIndex:I

    .line 345
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mMimeTypeColIndex:I

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberCol:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberColIndex:I

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTagTexts:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 351
    const-string v0, "drm_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mDrmTypeColIndex:I

    .line 353
    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;, "TVH;"
    const/4 v2, -0x1

    .line 94
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 102
    .local v0, "c":Landroid/database/Cursor;
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    if-eq v1, v2, :cond_2

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolderNowPlayingView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 107
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mTrackNumberColIndex:I

    if-eq v1, v2, :cond_3

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolderTrackNumber(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 111
    :cond_3
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->hasThumbnailPlayPauseIcon:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mAudioIdColIndex:I

    if-eq v1, v2, :cond_4

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindThumbnailPlayPauseIcon(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 115
    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewTrackTagText(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 119
    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackTagIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mCpAttrsColIndex:I

    if-eq v1, v2, :cond_0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewTrackTagIcon(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderNowPlayingView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 125
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 131
    .local v0, "audioId":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingAudioId:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlayingTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updateNormalTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public startEqualizerAnimation()V
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 418
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->notifyDataSetChanged()V

    .line 421
    :cond_0
    return-void
.end method

.method public stopEqualizerAnimation()V
    .locals 2

    .prologue
    .line 424
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingItemEqualizerView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingItemEqualizerView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->stop()V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingItemEqualizerView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    .line 428
    :cond_0
    return-void
.end method

.method protected updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "isPlayingItem"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 280
    if-eqz p2, :cond_3

    .line 281
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingItemEqualizerView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 283
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 287
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setColor(I)V

    .line 288
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    .line 289
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->start()V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setColor(I)V

    .line 292
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    .line 293
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->pause()V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->stop()V

    .line 300
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->equalizerAnimationView:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateNormalTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    .prologue
    .line 324
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->text1TextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->text2TextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->text3TextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumberTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    :cond_2
    return-void
.end method

.method public updatePlaybackState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 405
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatePlaybackState() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayState:I

    if-ne v0, p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayState:I

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 411
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updatePlayingAudioId(J)V
    .locals 3
    .param p1, "audioId"    # J

    .prologue
    .line 387
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatePlayingAudioId() audioId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingAudioId:J

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayState:I

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 391
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->notifyDataSetChanged()V

    .line 394
    :cond_0
    return-void
.end method

.method public updatePlayingColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 397
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 399
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->notifyDataSetChanged()V

    .line 402
    :cond_0
    return-void
.end method

.method protected updatePlayingTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    .prologue
    .line 310
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<TVH;>;"
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->mPlayingTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    :cond_2
    return-void
.end method
