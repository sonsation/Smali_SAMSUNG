.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "PrivateFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 150
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->build()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;
    .locals 0

    .prologue
    .line 154
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->self()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
