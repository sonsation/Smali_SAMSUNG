.class Lcom/android/systemui/settings/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get2(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get11(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 337
    if-eqz p3, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-wrap0(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 349
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 351
    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get11(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 351
    if-eqz p3, :cond_3

    .line 355
    const-string/jumbo v0, "ToggleSlider"

    const-string/jumbo v1, "dismiss strain popup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->-get13(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->-get12(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    const/4 v5, 0x0

    move v4, p2

    .line 360
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 335
    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->-set2(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 376
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get3(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get12(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get12(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "ToggleSlider"

    const-string/jumbo v1, "setHbmMode  VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 366
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v5, 0x1

    .line 394
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->-set2(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 396
    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->-get13(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->-get12(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    .line 401
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->-get11(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v4

    .line 400
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get11(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 404
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->-get13(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->-get12(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    .line 409
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->-get9(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v4

    .line 408
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 393
    :cond_3
    return-void
.end method
