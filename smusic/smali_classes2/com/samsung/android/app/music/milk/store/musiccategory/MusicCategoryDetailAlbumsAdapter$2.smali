.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$2;
.super Ljava/lang/Object;
.source "MusicCategoryDetailAlbumsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

.field final synthetic val$album:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$2;->val$album:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$2;->val$album:Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    .line 80
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 82
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "989"

    const-string v2, "9882"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
