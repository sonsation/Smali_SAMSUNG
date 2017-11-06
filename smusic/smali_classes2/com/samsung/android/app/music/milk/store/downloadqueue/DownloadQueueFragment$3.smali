.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;
.super Ljava/lang/Object;
.source "DownloadQueueFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->showOverFlowDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->val$context:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method
