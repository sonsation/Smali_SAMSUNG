.class public Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "AlbumDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mYearNameCol:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 204
    const-string/jumbo v0, "year_name"

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->mYearNameCol:Ljava/lang/String;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->mYearNameCol:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;-><init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->build()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;
    .locals 0

    .prologue
    .line 218
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->self()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setYearNameCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->mYearNameCol:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->self()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
