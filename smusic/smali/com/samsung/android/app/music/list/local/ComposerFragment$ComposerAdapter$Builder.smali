.class public Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "ComposerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 258
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;
    .locals 0

    .prologue
    .line 262
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
