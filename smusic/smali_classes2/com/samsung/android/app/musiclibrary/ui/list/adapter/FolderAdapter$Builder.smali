.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method
