.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SearchableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$MimeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private mAlbumCount:I

.field private mAlbumIndex:I

.field private mArtistCount:I

.field private mArtistIndex:I

.field private final mAudioIdCol:Ljava/lang/String;

.field private mAudioIdColIndex:I

.field private mData1Index:I

.field private mData2Index:I

.field private final mGlobalSearchMode:Z

.field private mIsUnknown:Z

.field private mMatchedTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mMimeTypeIndex:I

.field private mQueryText:Ljava/lang/String;

.field private final mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

.field private mTitleIndex:I

.field private mTrackCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdColIndex:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mIsUnknown:Z

    .line 72
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdCol:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_matched_text_winset:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mMatchedTextColor:I

    .line 76
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    return v0
.end method

.method private getAlbumName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 190
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "name":Ljava/lang/String;
    move-object v0, v1

    .line 192
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->unknown_album:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    return-object v0
.end method

.method private getArtistName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 179
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "name":Ljava/lang/String;
    move-object v0, v1

    .line 181
    .local v0, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mIsUnknown:Z

    .line 182
    if-eqz v1, :cond_0

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->unknown_artist:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mIsUnknown:Z

    .line 186
    :cond_1
    return-object v0
.end method

.method private getMimeType(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 285
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mMimeTypeIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 287
    const-string v0, "audio/"

    .line 289
    :cond_0
    return-object v0
.end method

.method private getTrackName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 199
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTitleIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setMimeTypeCount(I)V
    .locals 1
    .param p1, "mimeTypeNum"    # I

    .prologue
    .line 269
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistCount:I

    goto :goto_0

    .line 274
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumCount:I

    goto :goto_0

    .line 277
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTrackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTrackCount:I

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAudioId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 306
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    const-wide/16 v0, -0x1

    .line 308
    .local v0, "audioId":J
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 309
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdColIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 310
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdColIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 312
    :cond_0
    return-wide v0
.end method

.method public getAudioIdColIndex()I
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdColIndex:I

    return v0
.end method

.method public final getMatchedMimeType(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 293
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getMimeType(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "artist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x1

    .line 302
    :goto_0
    return v1

    .line 296
    :cond_0
    const-string v1, "album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    const/4 v1, 0x2

    goto :goto_0

    .line 298
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/ogg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/x-ogg"

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 302
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 320
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTrackCount:I

    return v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 163
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mMimeTypeIndex:I

    .line 166
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mData1Index:I

    .line 167
    const-string v0, "data2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mData2Index:I

    .line 170
    :cond_0
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistIndex:I

    .line 171
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumIndex:I

    .line 172
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTitleIndex:I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdCol:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAudioIdColIndex:I

    .line 176
    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V
    .locals 10
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;, "TVH;"
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getItemViewType(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 82
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, "c":Landroid/database/Cursor;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 86
    .local v2, "savedMimeType":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v1

    .line 88
    .local v1, "mimeType":I
    if-ne v2, v1, :cond_1

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 92
    packed-switch v1, :pswitch_data_0

    .line 106
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_0
    if-eqz v3, :cond_0

    .line 110
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleText1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleText1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->tts_header:I

    .line 112
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "mimeType":I
    .end local v2    # "savedMimeType":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 94
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "mimeType":I
    .restart local v2    # "savedMimeType":I
    .restart local v3    # "text":Ljava/lang/String;
    :pswitch_0
    const-string v4, "%s (%d)"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->artists:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistCount:I

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 94
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    const-string v4, "%s (%d)"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->albums:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumCount:I

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 98
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    const-string v4, "%s (%d)"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->tracks:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTrackCount:I

    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 102
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    goto :goto_0

    .line 115
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 117
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "mimeType":I
    .end local v2    # "savedMimeType":I
    :cond_2
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 125
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mQueryText:Ljava/lang/String;

    .line 126
    .local v3, "queryText":Ljava/lang/String;
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 127
    .local v4, "tv":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mMatchedTextColor:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 128
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    if-eqz v5, :cond_4

    .line 129
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v0

    .line 130
    .local v0, "mimeType":I
    if-ne v0, v6, :cond_2

    .line 131
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getArtistName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 141
    .end local v0    # "mimeType":I
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .end local v4    # "tv":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 142
    .restart local v4    # "tv":Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mMatchedTextColor:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 143
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    if-eqz v5, :cond_7

    .line 144
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v0

    .line 145
    .restart local v0    # "mimeType":I
    if-ne v0, v6, :cond_5

    .line 146
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mData1Index:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 147
    .local v1, "numAlbums":I
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mData2Index:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 148
    .local v2, "numSongs":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mIsUnknown:Z

    .line 149
    invoke-static {v5, v1, v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v0    # "mimeType":I
    .end local v1    # "numAlbums":I
    .end local v2    # "numSongs":I
    :cond_1
    :goto_1
    return-void

    .line 132
    .restart local v0    # "mimeType":I
    :cond_2
    if-ne v0, v7, :cond_3

    .line 133
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getAlbumName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    if-ne v0, v8, :cond_0

    .line 135
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getTrackName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0    # "mimeType":I
    :cond_4
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getTrackName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .restart local v0    # "mimeType":I
    :cond_5
    if-ne v0, v7, :cond_6

    .line 151
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getArtistName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_6
    if-ne v0, v8, :cond_1

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getArtistName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getAlbumName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    .end local v0    # "mimeType":I
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getArtistName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getAlbumName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMimeTypeInfo(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    const/4 v9, 0x0

    .line 207
    iget-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mGlobalSearchMode:Z

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 214
    const/4 v7, -0x1

    .line 215
    .local v7, "savedMimeType":I
    iput v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistCount:I

    .line 216
    iput v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumCount:I

    .line 217
    iput v9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTrackCount:I

    .line 219
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 221
    .local v2, "grouporders":[I
    const/4 v1, 0x0

    .line 223
    .local v1, "counts":[I
    if-eqz v0, :cond_2

    .line 224
    const-string v8, "index_grouporder"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 225
    const-string v8, "index_counts"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 228
    :cond_2
    if-eqz v2, :cond_3

    if-nez v1, :cond_7

    .line 229
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 231
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v4

    .line 232
    .local v4, "mimeTypeNum":I
    if-gez v4, :cond_6

    .line 241
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    .line 235
    :cond_6
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->setMimeTypeCount(I)V

    .line 236
    if-eq v4, v7, :cond_5

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 238
    .local v5, "position":I
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    move v7, v4

    goto :goto_1

    .line 245
    .end local v4    # "mimeTypeNum":I
    .end local v5    # "position":I
    :cond_7
    const/4 v6, 0x0

    .line 246
    .local v6, "savedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 247
    aget v8, v2, v3

    packed-switch v8, :pswitch_data_0

    .line 263
    :goto_3
    aget v8, v1, v3

    add-int/2addr v6, v8

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 249
    :pswitch_0
    aget v8, v1, v3

    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mArtistCount:I

    .line 250
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 253
    :pswitch_1
    aget v8, v1, v3

    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mAlbumCount:I

    .line 254
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 257
    :pswitch_2
    aget v8, v1, v3

    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mTrackCount:I

    .line 258
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mSavedMimeTypeIndex:Landroid/util/SparseIntArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 203
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mQueryText:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public updateMatchedColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 324
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<TVH;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mMatchedTextColor:I

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 326
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->notifyDataSetChanged()V

    .line 329
    :cond_0
    return-void
.end method
