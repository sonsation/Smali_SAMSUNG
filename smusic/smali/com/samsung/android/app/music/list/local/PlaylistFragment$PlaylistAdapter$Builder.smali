.class public Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1157
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 1158
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
    .locals 1

    .prologue
    .line 1167
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;
    .locals 0

    .prologue
    .line 1162
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
