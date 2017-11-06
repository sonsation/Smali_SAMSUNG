.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$2;
.super Ljava/lang/Object;
.source "PrivateModeFileOperationThread.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->scanExternalStorage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .line 468
    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 469
    return-void
.end method
