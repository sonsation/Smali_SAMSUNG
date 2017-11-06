.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;
.super Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;
.source "MusicCategoryGenreReorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;",
        "Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryGenreReorderAdapter"


# instance fields
.field private mDefaulGenreIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "defaulGenreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 25
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->mDefaulGenreIds:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->setSelectMode(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public getCheckBoxResId()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getCurItemList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "curItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getReorderIconResId()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f1202dc

    return v0
.end method

.method public getReorderValue()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v3, "retLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    .line 88
    .local v1, "item":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    const-string v4, "MusicCategoryGenreReorderAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getReorderValue] Genre : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getGenreName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "item":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    :cond_0
    return-object v3
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    .line 60
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    const-string v1, "MusicCategoryGenreReorderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " info["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->getGenreTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public bridge synthetic onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 48
    const-string v2, "MusicCategoryGenreReorderAdapter"

    const-string v3, " [onCreateItemViewHolder]"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    .local v1, "viewHolder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;
    return-object v1
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public playWithCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 75
    return-void
.end method
