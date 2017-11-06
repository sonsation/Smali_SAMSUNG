.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 92
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;)V

    return-object v0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method
