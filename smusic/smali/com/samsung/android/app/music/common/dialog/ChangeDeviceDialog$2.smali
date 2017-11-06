.class Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;
.super Ljava/lang/Object;
.source "ChangeDeviceDialog.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 287
    const-string v0, "ChangeDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog       | onNotify() type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$1000(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a011f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$1100(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$1200(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const v0, 0x7f0a0225

    sget v1, Lcom/samsung/android/app/music/regional/VariantStringIds;->UNABLE_TO_SCAN_DEVICE:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->newInstance(II)Lcom/samsung/android/app/music/common/dialog/NotiDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .line 298
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    const v0, 0x7f0a0213

    const v1, 0x7f0a0212

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->newInstance(II)Lcom/samsung/android/app/music/common/dialog/NotiDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .line 302
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScanFinished(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;>;"
    const/16 v2, 0x8

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$502(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$500(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$600(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Ljava/util/ArrayList;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$700(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .line 279
    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$500(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$800(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$900(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public onStartScan()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Z)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$300(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V

    .line 265
    return-void
.end method

.method public onStopScan()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Z)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$400(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$300(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V

    .line 272
    return-void
.end method
