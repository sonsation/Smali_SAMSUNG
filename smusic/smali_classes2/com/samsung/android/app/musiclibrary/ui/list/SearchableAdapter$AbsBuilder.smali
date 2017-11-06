.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SearchableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder",
        "<TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAudioIdCol:Ljava/lang/String;

.field private mGlobalSearchMode:Z

.field private mMatchedTextColorResId:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 389
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mAudioIdCol:Ljava/lang/String;

    .line 384
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_matched_text_winset:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mMatchedTextColorResId:I

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mAudioIdCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mGlobalSearchMode:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 379
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
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
    .line 393
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mAudioIdCol:Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object v0
.end method

.method public setGlobalSearchMode(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
    .locals 1
    .param p1, "globalSearchMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mGlobalSearchMode:Z

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object v0
.end method

.method public setMatchedTextColor(I)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
    .locals 1
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->mMatchedTextColorResId:I

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object v0
.end method

.method public bridge synthetic setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 379
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object v0
.end method
