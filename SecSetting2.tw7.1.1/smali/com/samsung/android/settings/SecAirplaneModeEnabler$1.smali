.class Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "SecAirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecAirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecAirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;->this$0:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;->this$0:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->-wrap0(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method