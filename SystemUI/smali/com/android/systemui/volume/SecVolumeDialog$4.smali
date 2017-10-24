.class Lcom/android/systemui/volume/SecVolumeDialog$4;
.super Landroid/content/BroadcastReceiver;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 3370
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3374
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3375
    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v1, 0x1

    .line 3376
    .local v1, "bPluged":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get25(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3379
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EarJack plug-out, remove waring popup on the s view cover"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 3371
    .end local v1    # "bPluged":Z
    :cond_0
    :goto_1
    return-void

    .line 3375
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bPluged":Z
    goto :goto_0

    .line 3382
    .end local v1    # "bPluged":Z
    :cond_2
    const-string/jumbo v4, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3383
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : call onDismissSafeVolumeWarning() #2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialog;)V

    goto :goto_1

    .line 3385
    :cond_3
    const-string/jumbo v4, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3386
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get4(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 3387
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : call onDismissSafeVolumeWarning() #3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialog;)V

    goto :goto_1

    .line 3389
    :cond_4
    const-string/jumbo v4, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3390
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap1(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-set22(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 3391
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBroadcastReceiver: misTalkbackEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3394
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get32(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "row$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 3395
    .local v2, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 3396
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 3397
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3398
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3401
    .end local v2    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v3    # "row$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get32(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "row$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 3402
    .restart local v2    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3403
    const v6, 0x1080aa9

    .line 3402
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3405
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3408
    .end local v2    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v3    # "row$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3409
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : dismiss mLockScreenDialog()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get26(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3411
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v4, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    goto/16 :goto_1
.end method
