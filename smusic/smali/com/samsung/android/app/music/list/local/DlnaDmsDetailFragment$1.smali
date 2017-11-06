.class Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DlnaDmsDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.sec.android.app.music.dlna.flat.searching.info"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    .line 236
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$200(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string v4, "com.sec.android.app.music.dlna.flat.searching.extra.what"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 241
    .local v3, "what":I
    const-string v4, "UiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDlnaEventReceiver action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " what : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    packed-switch v3, :pswitch_data_0

    .line 260
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v8}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v8}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    .line 247
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v8}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$300(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v8}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    .line 254
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$400(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    goto :goto_0

    .line 257
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    goto :goto_0

    .line 263
    .end local v3    # "what":I
    :cond_2
    const-string v4, "com.sec.android.app.music.dlna.flat.searching.error"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    const-string v4, "com.sec.android.app.music.dlna.flat.searching.extra.error"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 266
    .restart local v3    # "what":I
    const-string v4, "com.sec.android.app.music.dlna.extra.deviceId"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "deviceId":Ljava/lang/String;
    const-string v4, "UiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDlnaEventReceiver action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " what : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deviceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 277
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getKeyword()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "keyWord":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$002(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    .line 281
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$102(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    .line 282
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v4, v7}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$500(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
