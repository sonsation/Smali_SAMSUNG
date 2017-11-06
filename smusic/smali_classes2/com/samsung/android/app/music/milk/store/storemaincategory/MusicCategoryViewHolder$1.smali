.class Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder$1;
.super Ljava/lang/Object;
.source "MusicCategoryViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;->onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicCategoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;

    .line 95
    .local v1, "item":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 96
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    const-string v2, "key_category_detail_title"

    .line 100
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreName()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "key_category_type"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v2, "key_category_id"

    .line 104
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreId()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "931"

    const-string v4, "9310"

    .line 108
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreName()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
