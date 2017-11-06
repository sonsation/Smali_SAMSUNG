.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;
.super Ljava/lang/Object;
.source "MusicCategoryGenreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionMenuSelected(I)Z
    .locals 6
    .param p1, "menu"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    packed-switch p1, :pswitch_data_0

    move v2, v3

    .line 116
    :goto_0
    return v2

    .line 97
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4, v3, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;ZZ)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;ZZ)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, "selectedGenreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$200(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;Ljava/util/ArrayList;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "milk.store.category.category_reorder"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v3, "genreIdList"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "985"

    const-string v5, "9852"

    .line 113
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
