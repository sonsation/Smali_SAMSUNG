.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "TrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAudioIdCol:Ljava/lang/String;

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

.field private mPlayingTextColor:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mThumbnailPlayPauseIconEnabled:Z

.field private mTrackNumberCol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 518
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mTrackNumberCol:Ljava/lang/String;

    .line 520
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mAudioIdCol:Ljava/lang/String;

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mThumbnailPlayPauseIconEnabled:Z

    .line 524
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mCpTagIconIds:Landroid/util/SparseIntArray;

    .line 526
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mCpTagTexts:Landroid/util/SparseArray;

    .line 528
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mDrmTagTexts:Landroid/util/SparseArray;

    .line 530
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_playing:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mPlayingTextColor:I

    .line 535
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mAudioIdCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mTrackNumberCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mThumbnailPlayPauseIconEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mCpTagIconIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mCpTagTexts:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mDrmTagTexts:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .prologue
    .line 515
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mPlayingTextColor:I

    return v0
.end method


# virtual methods
.method public addCpTagIcon(II)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "cpAttrs"    # I
    .param p2, "iconResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mCpTagIconIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method

.method public addCpTagText(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "cpAttrs"    # I
    .param p2, "tagText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mCpTagTexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method

.method public addDrmTag(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "drmType"    # I
    .param p2, "tagText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mDrmTagTexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method

.method public setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mAudioIdCol:Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method

.method public setPlayingTextColor(I)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mPlayingTextColor:I

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method

.method public setThumbnailPlayPauseIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mThumbnailPlayPauseIconEnabled:Z

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method

.method public setTrackNumberCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->mTrackNumberCol:Ljava/lang/String;

    .line 550
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    return-object v0
.end method
