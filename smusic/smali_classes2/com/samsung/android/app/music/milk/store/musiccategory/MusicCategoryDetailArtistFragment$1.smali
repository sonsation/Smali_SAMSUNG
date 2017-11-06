.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;
.super Ljava/lang/Object;
.source "MusicCategoryDetailArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadMore()Z
    .locals 3

    .prologue
    .line 67
    const-string v0, "CategoryDetailArtistFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnLoadMoreListener : isLoadMore - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Z

    move-result v0

    return v0
.end method

.method public onLoadMore()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "CategoryDetailArtistFragment"

    const-string v1, "OnLoadMoreListener : onLoadMore"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->showLoadMore()V

    .line 75
    return-void
.end method
