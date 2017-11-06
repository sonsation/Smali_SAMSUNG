.class Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker$1;
.super Ljava/lang/Object;
.source "MediaSessionChecker.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "mediaControllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActiveSessionsChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->access$102(Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;Ljava/util/List;)Ljava/util/List;

    .line 75
    return-void
.end method
