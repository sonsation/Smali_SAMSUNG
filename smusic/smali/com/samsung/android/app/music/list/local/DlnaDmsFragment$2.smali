.class Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "DlnaDmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Network connect success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->access$002(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;Z)Z

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Network connect fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->access$002(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;Z)Z

    goto :goto_0
.end method
