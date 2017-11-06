.class Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$3;
.super Ljava/lang/Object;
.source "DefaultOptionGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/PlayerControllable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Tracks"

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    .line 89
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;)Lcom/samsung/android/app/music/common/player/FavoriteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
