.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "ArtistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 30
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mGroupType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 31
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mKeywordIndex:I

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mKeywordIndex:I

    goto :goto_0
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 10
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 48
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText1Index:I

    if-eq v2, v7, :cond_0

    .line 49
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText1Index:I

    .line 50
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText2Index:I

    if-eq v2, v7, :cond_2

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNalbum:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText2Index:I

    .line 54
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText2Index:I

    .line 55
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 54
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "text":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText3Index:I

    if-eq v2, v7, :cond_1

    .line 58
    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mFragment:Landroid/app/Fragment;

    .line 59
    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNtrack:I

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText3Index:I

    .line 60
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mText3Index:I

    .line 61
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 60
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    :cond_1
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 39
    if-nez p3, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_list_item_default:I

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 43
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public setGroupType(I)V
    .locals 0
    .param p1, "groupType"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->mGroupType:I

    .line 69
    return-void
.end method
