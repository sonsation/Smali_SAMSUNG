.class Lcom/mapps/android/view/AdView$10;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    .line 1123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1125
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, v2}, Lcom/mapps/android/view/AdView;->access$13(Lcom/mapps/android/view/AdView;Z)V

    .line 1126
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$15(Lcom/mapps/android/view/AdView;I)V

    .line 1127
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$16(Lcom/mapps/android/view/AdView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataNTBanner;->setRotatetime(Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    .line 1134
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    const/16 v1, -0x384

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    .line 1132
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    goto :goto_0
.end method
