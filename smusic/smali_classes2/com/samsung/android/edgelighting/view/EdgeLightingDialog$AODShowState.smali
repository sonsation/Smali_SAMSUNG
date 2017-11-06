.class final Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;
.super Landroid/database/ContentObserver;
.source "EdgeLightingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AODShowState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .line 463
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 464
    return-void
.end method


# virtual methods
.method getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 478
    const-string v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method isEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_show_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 468
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$500(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$AODShowState;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$600(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;Landroid/view/Window;)V

    .line 471
    :cond_0
    return-void
.end method
