.class Lcom/android/settings/fingerprint/RegisterFingerprint$23;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$23;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$23;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2271
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$23;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->chageGuideVideo(I)V

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$23;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$23;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get17(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$23;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->chageGuideVideo(I)V

    goto :goto_0
.end method
