.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "mirrorlink"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "ml":Ljava/lang/String;
    const-string/jumbo v2, "START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 284
    .end local v1    # "ml":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 285
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "usb_tethering_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    .line 263
    :cond_1
    :goto_1
    return-void

    .line 270
    .restart local v1    # "ml":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "RELEASE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    goto :goto_0

    .line 273
    .end local v1    # "ml":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string/jumbo v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 275
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string/jumbo v3, "configured"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 276
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string/jumbo v3, "ncm"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    goto :goto_0

    .line 277
    :cond_4
    const-string/jumbo v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 278
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 279
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    .line 280
    :cond_5
    const-string/jumbo v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 282
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    .line 288
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto/16 :goto_1
.end method
