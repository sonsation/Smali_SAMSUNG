.class Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;
.super Landroid/os/Handler;
.source "EdgeLightingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$000(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
