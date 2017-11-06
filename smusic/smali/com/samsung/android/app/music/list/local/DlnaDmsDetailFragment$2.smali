.class Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;
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
    .line 292
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sec.android.app.music.dlna.connectivitychanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const-string v3, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    const/4 v4, -0x1

    .line 298
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 299
    .local v2, "errType":I
    if-ne v2, v5, :cond_0

    .line 300
    const-string v3, "com.sec.android.app.music.dlna.extra.deviceId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$600(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    .line 318
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "errType":I
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v1    # "deviceId":Ljava/lang/String;
    .restart local v2    # "errType":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$702(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)Z

    goto :goto_0
.end method
