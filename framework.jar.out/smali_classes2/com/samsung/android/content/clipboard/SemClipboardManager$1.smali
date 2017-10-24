.class Lcom/samsung/android/content/clipboard/SemClipboardManager$1;
.super Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 93
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 94
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    iput p1, v1, Landroid/os/Message;->what:I

    .line 97
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get1(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method

.method public onUpdateFilter(I)V
    .locals 3
    .param p1, "filter"    # I

    .prologue
    .line 103
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 104
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "filter"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 107
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get1(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method
