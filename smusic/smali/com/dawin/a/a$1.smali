.class Lcom/dawin/a/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/a/a;


# direct methods
.method constructor <init>(Lcom/dawin/a/a;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-static {v0}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a;)Lcom/dawin/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-static {v0}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a;)Lcom/dawin/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/dawin/a/a$b;->a()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->c()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method
