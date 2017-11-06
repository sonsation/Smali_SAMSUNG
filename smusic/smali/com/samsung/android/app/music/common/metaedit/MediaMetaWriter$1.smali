.class Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;
.super Ljava/lang/Object;
.source "MediaMetaWriter.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;->this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 100
    const-string v0, "MediaMetaWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanCompleted path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;->this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;->this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$000(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$100(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Landroid/content/Context;Landroid/net/Uri;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;->this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$200(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;->this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$300(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$1;->this$0:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$300(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;->onCompletedEditing()V

    .line 110
    :cond_0
    return-void
.end method
