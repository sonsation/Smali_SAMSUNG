.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "MusicCategoryViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryViewHolder"


# instance fields
.field itemFrame:Landroid/widget/LinearLayout;

.field mDefaultGenreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation
.end field

.field mHeader:Landroid/widget/LinearLayout;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f120429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->itemFrame:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f1202cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->mHeader:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const v1, 0x7f04016c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 11
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    const/4 v10, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getCategoryGenreList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->mDefaultGenreList:Ljava/util/List;

    .line 68
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->itemFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 70
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->itemFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    .line 71
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 73
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getCategoryGenreList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;

    .line 74
    .local v2, "item":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    const v5, 0x7f04016d

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->itemFrame:Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {v1, v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 77
    .local v3, "itemView":Landroid/widget/RelativeLayout;
    const v5, 0x7f1202dd

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    .local v4, "tvGenre":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "genreName":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isHangul(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const-string/jumbo v5, "sans-serif-light"

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    :goto_1
    const v5, 0x7f12042a

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 88
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x7f0200db

    .line 87
    invoke-static {v5, v7, v8, v9}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 90
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 91
    new-instance v5, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->itemFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v5, "sans-serif-medium"

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    const-string v4, "MusicCategoryViewHolder"

    const-string v5, "onClick : Click Header"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->mDefaultGenreList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;

    .line 134
    .local v1, "genre":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreId()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v1    # "genre":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveMusicCategory(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "931"

    const-string v6, "9309"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x7f1202cd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->initTitle()V

    .line 60
    return-void
.end method

.method public onUnBindView()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
