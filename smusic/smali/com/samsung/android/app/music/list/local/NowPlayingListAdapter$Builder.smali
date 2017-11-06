.class public Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "NowPlayingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCpIconColors:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 136
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->mCpIconColors:Landroid/util/SparseIntArray;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->mCpIconColors:Landroid/util/SparseIntArray;

    return-object v0
.end method


# virtual methods
.method addCpIconColor(II)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    .locals 1
    .param p1, "cpAttrs"    # I
    .param p2, "iconColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->mCpIconColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    .locals 0

    .prologue
    .line 149
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
