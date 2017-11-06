.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "MilkSearchStoreAlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->hideKeyboardAndCursor(Landroid/view/View;)V

    return-void
.end method

.method private hideKeyboardAndCursor(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 116
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 120
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->clear(Z)V

    .line 105
    return-void
.end method

.method protected createSearchAlbumsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f110044

    .line 53
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 54
    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;

    .line 56
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;

    .line 57
    .local v0, "album":Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    const v4, 0x7f0201da

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getAlbumTitle()Landroid/widget/TextView;

    move-result-object v3

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getAlbumTitle()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 63
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getAlbumTitle()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getArtistName()Landroid/widget/TextView;

    move-result-object v3

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 65
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getArtistName()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getArtistName()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;->getArtistsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->getPlayImage()Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .end local v0    # "album":Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->createSearchAlbumsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
