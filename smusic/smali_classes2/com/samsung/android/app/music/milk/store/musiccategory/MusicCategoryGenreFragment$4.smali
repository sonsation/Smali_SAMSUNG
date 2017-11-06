.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "MusicCategoryGenreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "genreInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->swapArray(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$400(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;Z)V

    .line 224
    return-void
.end method
