.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V

    return-object v0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;
    .locals 0

    .prologue
    .line 53
    return-object p0
.end method
