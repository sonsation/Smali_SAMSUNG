.class Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;
.super Landroid/os/Handler;
.source "BigPondModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 154
    const-string v0, "BigPondModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 159
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$200(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$400(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$500(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    goto :goto_0

    .line 166
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$600(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$700(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$900(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)V

    goto :goto_0

    .line 176
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$600(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$900(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)V

    goto :goto_0

    .line 183
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$600(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    goto :goto_0

    .line 189
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    goto/16 :goto_0

    .line 194
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    goto/16 :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
