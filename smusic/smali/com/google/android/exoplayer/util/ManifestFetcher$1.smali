.class Lcom/google/android/exoplayer/util/ManifestFetcher$1;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V
    .locals 0

    .prologue
    .line 320
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$1;, "Lcom/google/android/exoplayer/util/ManifestFetcher.1;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$1;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher$1;, "Lcom/google/android/exoplayer/util/ManifestFetcher.1;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$1;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;->onManifestRefreshStarted()V

    .line 324
    return-void
.end method
