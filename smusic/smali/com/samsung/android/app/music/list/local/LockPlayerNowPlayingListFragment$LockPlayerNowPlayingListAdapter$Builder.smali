.class public Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "LockPlayerNowPlayingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 341
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;
    .locals 0

    .prologue
    .line 345
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
