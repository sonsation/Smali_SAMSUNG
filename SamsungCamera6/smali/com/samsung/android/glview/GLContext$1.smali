.class Lcom/samsung/android/glview/GLContext$1;
.super Landroid/content/BroadcastReceiver;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$1;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$1;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gestureId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$1;->this$0:Lcom/samsung/android/glview/GLContext;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->onHoverSwipeEvent(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$1;->this$0:Lcom/samsung/android/glview/GLContext;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->onHoverSwipeEvent(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$1;->this$0:Lcom/samsung/android/glview/GLContext;

    const/16 v2, 0x62

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->onHoverSwipeEvent(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$1;->this$0:Lcom/samsung/android/glview/GLContext;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->onHoverSwipeEvent(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
