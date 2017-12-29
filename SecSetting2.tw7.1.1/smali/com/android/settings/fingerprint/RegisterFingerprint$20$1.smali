.class Lcom/android/settings/fingerprint/RegisterFingerprint$20$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$20;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 2318
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get5(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2319
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f1103e4

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2320
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2321
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2317
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 2323
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get9(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2324
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f1103eb

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2325
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2326
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
