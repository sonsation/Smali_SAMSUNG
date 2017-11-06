.class public Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "ArtistSelectPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;,
        Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;
    }
.end annotation


# static fields
.field private static final KEY_ARTIST_LIST:Ljava/lang/String; = "key_artist_list"

.field private static final TAG:Ljava/lang/String; = "ArtistSelectPopup"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;

.field private mArtistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->mAdapter:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v2, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;-><init>()V

    .line 38
    .local v2, "popup":Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "newArtists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    const-string v3, "key_artist_list"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v2
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    if-nez p0, :cond_0

    .line 48
    const-string v0, "ArtistSelectPopup"

    const-string/jumbo v1, "show : manager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->newInstance(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    move-result-object v0

    const-string v1, "ArtistSelectPopup"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getHorizontalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d059c

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0400d7

    return v0
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDialogCreated(Landroid/app/Dialog;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 71
    const-string v2, "key_artist_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->mArtistList:Ljava/util/ArrayList;

    .line 74
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    new-instance v2, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->mArtistList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->mAdapter:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;

    .line 78
    const v2, 0x7f12027c

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 79
    .local v1, "listView":Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;
    new-instance v2, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->mAdapter:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 96
    const v2, 0x7f12027b

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$2;-><init>(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method
