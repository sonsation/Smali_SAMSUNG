.class Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$3;
.super Ljava/lang/Object;
.source "MediaPlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    .line 504
    return-void
.end method
