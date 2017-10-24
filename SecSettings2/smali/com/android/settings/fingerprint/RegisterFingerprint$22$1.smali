.class Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$22;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 2238
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$22;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2239
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$22;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f110390

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2240
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2237
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 2241
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$22;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$22$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$22;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f110394

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2243
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
