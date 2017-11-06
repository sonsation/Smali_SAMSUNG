.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;
.super Ljava/lang/Object;
.source "RadioMainFavoriteMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

.field final synthetic val$track:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "isFavorite":Z
    invoke-static {}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$200()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$200()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$200()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;ZZI)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    const-string v3, "1"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    .line 153
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->checkFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
