.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;
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

.field final synthetic val$favorite:Z

.field final synthetic val$track:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->val$favorite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->val$favorite:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;ZZI)V

    .line 134
    return-void
.end method
