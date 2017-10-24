.class Lcom/samsung/android/settings/ModePreviewTablet$8;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ModePreviewTablet;->showBluelightfilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ModePreviewTablet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ModePreviewTablet;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v3}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 404
    .local v0, "isAdaptiveMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 405
    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v3}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 409
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 402
    return-void

    .end local v0    # "isAdaptiveMode":Z
    :cond_0
    move v0, v2

    .line 403
    goto :goto_0

    .line 407
    .restart local v0    # "isAdaptiveMode":Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v3}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v4}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method
