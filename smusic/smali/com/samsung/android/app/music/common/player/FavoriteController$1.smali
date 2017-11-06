.class Lcom/samsung/android/app/music/common/player/FavoriteController$1;
.super Ljava/lang/Object;
.source "FavoriteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/FavoriteController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/music/common/player/BackgroundWorker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/FavoriteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$000(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$000(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->toggleFavorite()V

    .line 105
    return-void
.end method
