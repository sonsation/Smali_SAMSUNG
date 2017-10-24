.class Lcom/android/settings/fingerprint/RegisterFingerprint$21;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->startCompleteEffect()V
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
    .line 2144
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x193

    const/4 v4, 0x0

    const/16 v12, 0xcd

    const/16 v11, 0xcb

    const/4 v2, 0x0

    .line 2146
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 2148
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v2, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get28(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2152
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get27(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2153
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v13}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 2154
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    invoke-static {v0, v12, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2156
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/16 v1, 0x3ec

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v10

    .line 2157
    .local v10, "maxCount":I
    const/4 v8, 0x0

    .line 2158
    .local v8, "enrolledCount":I
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v9

    .line 2159
    .local v9, "fingerList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v9, :cond_1

    .line 2160
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 2165
    :goto_0
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enrolledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | maxCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    if-ge v8, v10, :cond_2

    .line 2168
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v13}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 2169
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-static {v0, v12, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2170
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v1, 0x7f11039d

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 2175
    .local v6, "buttonLayout":Landroid/widget/LinearLayout;
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2176
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v12, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2145
    .end local v6    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v8    # "enrolledCount":I
    .end local v9    # "fingerList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v10    # "maxCount":I
    :goto_2
    return-void

    .line 2163
    .restart local v8    # "enrolledCount":I
    .restart local v9    # "fingerList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v10    # "maxCount":I
    :cond_1
    move v8, v10

    goto :goto_0

    .line 2172
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-static {v0, v11, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2173
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v1, 0x7f1103a0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .restart local v6    # "buttonLayout":Landroid/widget/LinearLayout;
    goto :goto_1

    .line 2178
    .end local v6    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v8    # "enrolledCount":I
    .end local v9    # "fingerList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v10    # "maxCount":I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v1, 0x7f11038d

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2179
    .local v7, "completeText":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-static {v0, v11, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2180
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get27(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 2181
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2182
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v12, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    goto :goto_2
.end method
