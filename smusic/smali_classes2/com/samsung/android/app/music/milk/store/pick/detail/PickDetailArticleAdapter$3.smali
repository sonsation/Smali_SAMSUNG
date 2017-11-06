.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;
.super Ljava/lang/Object;
.source "PickDetailArticleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 94
    const-string v3, "PickDetailArticleAdapter"

    const-string v4, "onClick() Request Playing All Tracks on going. ignore this"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v4, "PickDetailArticleAdapter"

    const-string v5, "onClick() Request Playing All Tracks in this Article"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "music_service_pref"

    const/4 v6, 0x4

    .line 101
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "shuffle"

    .line 103
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 105
    .local v2, "isShuffleOn":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$202(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;I)I

    .line 110
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/PickArticle;

    .line 111
    .local v0, "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v1

    .line 112
    .local v1, "articleTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .end local v0    # "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    .end local v1    # "articleTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    .end local v2    # "isShuffleOn":Z
    :cond_2
    move v2, v3

    .line 103
    goto :goto_1

    .line 108
    .restart local v2    # "isShuffleOn":Z
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$202(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;I)I

    goto :goto_2

    .line 117
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$500(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .line 118
    invoke-static {v6}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$400(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
