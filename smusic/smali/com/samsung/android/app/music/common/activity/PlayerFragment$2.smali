.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$2;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$2;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 1
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "tintInfo"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$2;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$000(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$2;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$000(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;->onGetTintInfo(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    .line 292
    :cond_0
    return-void
.end method
