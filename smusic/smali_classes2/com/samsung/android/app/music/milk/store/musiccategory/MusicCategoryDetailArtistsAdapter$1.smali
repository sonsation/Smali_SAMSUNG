.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$1;
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
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$1;->val$artist:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$1;->val$artist:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    .line 54
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->getArtistId()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 56
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "990"

    const-string v2, "9892"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
