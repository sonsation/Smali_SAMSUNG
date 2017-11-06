.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;
.super Ljava/lang/Object;
.source "MusicCategoryDetailArtistsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

.field final synthetic val$artist:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;->val$artist:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;->val$artist:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->playStoreArtistTracks(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method
